??
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
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
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.0.02v2.0.0-rc2-26-g64c3d382ca8??
?
block1_conv1/kernelVarHandleOp*
shape:@*
_output_shapes
: *$
shared_nameblock1_conv1/kernel*
dtype0
?
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*
dtype0*&
_output_shapes
:@
z
block1_conv1/biasVarHandleOp*
dtype0*"
shared_nameblock1_conv1/bias*
shape:@*
_output_shapes
: 
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
?
block1_conv2/kernelVarHandleOp*
shape:@@*
_output_shapes
: *$
shared_nameblock1_conv2/kernel*
dtype0
?
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*
dtype0*&
_output_shapes
:@@
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *"
shared_nameblock1_conv2/bias*
shape:@*
dtype0
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
?
block2_conv1/kernelVarHandleOp*
shape:@?*
dtype0*$
shared_nameblock2_conv1/kernel*
_output_shapes
: 
?
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*
dtype0*'
_output_shapes
:@?
{
block2_conv1/biasVarHandleOp*
dtype0*
shape:?*"
shared_nameblock2_conv1/bias*
_output_shapes
: 
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:?*
dtype0
?
block2_conv2/kernelVarHandleOp*$
shared_nameblock2_conv2/kernel*
_output_shapes
: *
dtype0*
shape:??
?
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block2_conv2/biasVarHandleOp*"
shared_nameblock2_conv2/bias*
_output_shapes
: *
shape:?*
dtype0
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:?*
dtype0
?
block3_conv1/kernelVarHandleOp*
dtype0*
shape:??*$
shared_nameblock3_conv1/kernel*
_output_shapes
: 
?
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*
dtype0*(
_output_shapes
:??
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
shape:?*"
shared_nameblock3_conv1/bias*
dtype0
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:?*
dtype0
?
block3_conv2/kernelVarHandleOp*
_output_shapes
: *$
shared_nameblock3_conv2/kernel*
dtype0*
shape:??
?
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*
dtype0*(
_output_shapes
:??
{
block3_conv2/biasVarHandleOp*"
shared_nameblock3_conv2/bias*
dtype0*
_output_shapes
: *
shape:?
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:?*
dtype0
?
block3_conv3/kernelVarHandleOp*
shape:??*$
shared_nameblock3_conv3/kernel*
_output_shapes
: *
dtype0
?
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv3/biasVarHandleOp*"
shared_nameblock3_conv3/bias*
dtype0*
_output_shapes
: *
shape:?
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
dtype0*
_output_shapes	
:?
?
block4_conv1/kernelVarHandleOp*
_output_shapes
: *$
shared_nameblock4_conv1/kernel*
shape:??*
dtype0
?
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*
dtype0*(
_output_shapes
:??
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *"
shared_nameblock4_conv1/bias*
shape:?*
dtype0
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:?*
dtype0
?
block4_conv2/kernelVarHandleOp*
shape:??*$
shared_nameblock4_conv2/kernel*
_output_shapes
: *
dtype0
?
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *"
shared_nameblock4_conv2/bias*
shape:?*
dtype0
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
dtype0*
_output_shapes	
:?
?
block4_conv3/kernelVarHandleOp*$
shared_nameblock4_conv3/kernel*
dtype0*
_output_shapes
: *
shape:??
?
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
shape:?*"
shared_nameblock4_conv3/bias*
dtype0
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:?*
dtype0
?
block5_conv1/kernelVarHandleOp*
shape:??*$
shared_nameblock5_conv1/kernel*
_output_shapes
: *
dtype0
?
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv1/biasVarHandleOp*
shape:?*
dtype0*
_output_shapes
: *"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
dtype0*
_output_shapes	
:?
?
block5_conv2/kernelVarHandleOp*
shape:??*
dtype0*
_output_shapes
: *$
shared_nameblock5_conv2/kernel
?
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:?*
dtype0
?
block5_conv3/kernelVarHandleOp*
dtype0*
shape:??*
_output_shapes
: *$
shared_nameblock5_conv3/kernel
?
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*
dtype0*(
_output_shapes
:??
{
block5_conv3/biasVarHandleOp*"
shared_nameblock5_conv3/bias*
shape:?*
dtype0*
_output_shapes
: 
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:?*
dtype0
z
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*
_output_shapes
: *
dtype0*
shape:
??
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0* 
_output_shapes
:
??
q
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_output_shapes
: *
dtype0*
shape:?
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:?
z
dense_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel*
shape:
??
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0* 
_output_shapes
:
??
q
dense_2/biasVarHandleOp*
_output_shapes
: *
shape:?*
shared_namedense_2/bias*
dtype0
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
shape:	?*
shared_namedense_3/kernel*
dtype0
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?*
dtype0
p
dense_3/biasVarHandleOp*
shape:*
shared_namedense_3/bias*
dtype0*
_output_shapes
: 
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?_
ConstConst"/device:CPU:0*
_output_shapes
: *?^
value?^B?^ B?^
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
layer-23
layer_with_weights-15
layer-24
	variables
regularization_losses
trainable_variables
	keras_api

signatures
R
	variables
 regularization_losses
!trainable_variables
"	keras_api
h

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
h

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
R
/	variables
0regularization_losses
1trainable_variables
2	keras_api
h

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
h

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
R
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
h

Ckernel
Dbias
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
h

Ikernel
Jbias
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
h

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
R
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
h

Ykernel
Zbias
[	variables
\regularization_losses
]trainable_variables
^	keras_api
h

_kernel
`bias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
h

ekernel
fbias
g	variables
hregularization_losses
itrainable_variables
j	keras_api
R
k	variables
lregularization_losses
mtrainable_variables
n	keras_api
h

okernel
pbias
q	variables
rregularization_losses
strainable_variables
t	keras_api
h

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
i

{kernel
|bias
}	variables
~regularization_losses
trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
?26
?27
?28
?29
?30
?31
 
|
_0
`1
e2
f3
o4
p5
u6
v7
{8
|9
?10
?11
?12
?13
?14
?15
?
	variables
?non_trainable_variables
?layers
regularization_losses
 ?layer_regularization_losses
?metrics
trainable_variables
 
 
 
 
?
	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
 regularization_losses
?metrics
!trainable_variables
_]
VARIABLE_VALUEblock1_conv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 
 
?
%	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
&regularization_losses
?metrics
'trainable_variables
_]
VARIABLE_VALUEblock1_conv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 
 
?
+	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
,regularization_losses
?metrics
-trainable_variables
 
 
 
?
/	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
0regularization_losses
?metrics
1trainable_variables
_]
VARIABLE_VALUEblock2_conv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 
 
?
5	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
6regularization_losses
?metrics
7trainable_variables
_]
VARIABLE_VALUEblock2_conv2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 
 
?
;	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
<regularization_losses
?metrics
=trainable_variables
 
 
 
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
@regularization_losses
?metrics
Atrainable_variables
_]
VARIABLE_VALUEblock3_conv1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
 
 
?
E	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Fregularization_losses
?metrics
Gtrainable_variables
_]
VARIABLE_VALUEblock3_conv2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

I0
J1
 
 
?
K	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Lregularization_losses
?metrics
Mtrainable_variables
_]
VARIABLE_VALUEblock3_conv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 
 
?
Q	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Rregularization_losses
?metrics
Strainable_variables
 
 
 
?
U	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Vregularization_losses
?metrics
Wtrainable_variables
_]
VARIABLE_VALUEblock4_conv1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1
 
 
?
[	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
\regularization_losses
?metrics
]trainable_variables
_]
VARIABLE_VALUEblock4_conv2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1
 

_0
`1
?
a	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
bregularization_losses
?metrics
ctrainable_variables
_]
VARIABLE_VALUEblock4_conv3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1
 

e0
f1
?
g	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
hregularization_losses
?metrics
itrainable_variables
 
 
 
?
k	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
lregularization_losses
?metrics
mtrainable_variables
`^
VARIABLE_VALUEblock5_conv1/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv1/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1
 

o0
p1
?
q	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
rregularization_losses
?metrics
strainable_variables
`^
VARIABLE_VALUEblock5_conv2/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv2/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

u0
v1
 

u0
v1
?
w	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
xregularization_losses
?metrics
ytrainable_variables
`^
VARIABLE_VALUEblock5_conv3/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv3/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

{0
|1
 

{0
|1
?
}	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
~regularization_losses
?metrics
trainable_variables
 
 
 
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
[Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_2/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
[Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_3/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
v
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
?
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
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
 
 
 
 
 
 

#0
$1
 
 
 

)0
*1
 
 
 
 
 
 
 

30
41
 
 
 

90
:1
 
 
 
 
 
 
 

C0
D1
 
 
 

I0
J1
 
 
 

O0
P1
 
 
 
 
 
 
 

Y0
Z1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 *
dtype0
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tout
2*'
_output_shapes
:?????????*+
_gradient_op_typePartitionedCall-2235*,
Tin%
#2!*+
f&R$
"__inference_signature_wrapper_1676**
config_proto

GPU 

CPU2J 8
O
saver_filenamePlaceholder*
shape: *
_output_shapes
: *
dtype0
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpConst*+
_gradient_op_typePartitionedCall-2289*
_output_shapes
: **
config_proto

GPU 

CPU2J 8*&
f!R
__inference__traced_save_2288*-
Tin&
$2"*
Tout
2
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
_output_shapes
: **
config_proto

GPU 

CPU2J 8*,
Tin%
#2!*
Tout
2*)
f$R"
 __inference__traced_restore_2397*+
_gradient_op_typePartitionedCall-2398??
?
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_2134

inputs
identity?Q
dropout/rateConst*
valueB
 *   ?*
_output_shapes
: *
dtype0C
dropout/ShapeShapeinputs*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0_
dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0R
dropout/sub/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*(
_output_shapes
:??????????b
dropout/mulMulinputsdropout/truediv:z:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*(
_output_shapes
:??????????*

DstT0j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
*__inference_block3_conv1_layer_call_fn_883

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2**
_gradient_op_typePartitionedCall-878*B
_output_shapes0
.:,????????????????????????????**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
F
*__inference_block5_pool_layer_call_fn_1134

inputs
identity?
PartitionedCallPartitionedCallinputs*+
_gradient_op_typePartitionedCall-1131**
config_proto

GPU 

CPU2J 8*
Tin
2*J
_output_shapes8
6:4????????????????????????????????????*
Tout
2*N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_1323

inputs
identity?Q
dropout/rateConst*
dtype0*
valueB
 *   ?*
_output_shapes
: C
dropout/ShapeShapeinputs*
_output_shapes
:*
T0_
dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: _
dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ??*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0R
dropout/sub/xConst*
valueB
 *  ??*
_output_shapes
: *
dtype0b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
valueB
 *  ??*
_output_shapes
: *
dtype0h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*
T0*(
_output_shapes
:??????????b
dropout/mulMulinputsdropout/truediv:z:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*(
_output_shapes
:??????????*

DstT0*

SrcT0
j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?p
?
A__inference_model_1_layer_call_and_return_conditional_losses_1438
input_1/
+block1_conv1_statefulpartitionedcall_args_1/
+block1_conv1_statefulpartitionedcall_args_2/
+block1_conv2_statefulpartitionedcall_args_1/
+block1_conv2_statefulpartitionedcall_args_2/
+block2_conv1_statefulpartitionedcall_args_1/
+block2_conv1_statefulpartitionedcall_args_2/
+block2_conv2_statefulpartitionedcall_args_1/
+block2_conv2_statefulpartitionedcall_args_2/
+block3_conv1_statefulpartitionedcall_args_1/
+block3_conv1_statefulpartitionedcall_args_2/
+block3_conv2_statefulpartitionedcall_args_1/
+block3_conv2_statefulpartitionedcall_args_2/
+block3_conv3_statefulpartitionedcall_args_1/
+block3_conv3_statefulpartitionedcall_args_2/
+block4_conv1_statefulpartitionedcall_args_1/
+block4_conv1_statefulpartitionedcall_args_2/
+block4_conv2_statefulpartitionedcall_args_1/
+block4_conv2_statefulpartitionedcall_args_2/
+block4_conv3_statefulpartitionedcall_args_1/
+block4_conv3_statefulpartitionedcall_args_2/
+block5_conv1_statefulpartitionedcall_args_1/
+block5_conv1_statefulpartitionedcall_args_2/
+block5_conv2_statefulpartitionedcall_args_1/
+block5_conv2_statefulpartitionedcall_args_2/
+block5_conv3_statefulpartitionedcall_args_1/
+block5_conv3_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2*
&dense_3_statefulpartitionedcall_args_1*
&dense_3_statefulpartitionedcall_args_2
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1+block1_conv1_statefulpartitionedcall_args_1+block1_conv1_statefulpartitionedcall_args_2*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:?????????@@@**
_gradient_op_typePartitionedCall-744*N
fIRG
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0+block1_conv2_statefulpartitionedcall_args_1+block1_conv2_statefulpartitionedcall_args_2*N
fIRG
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763*
Tout
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-769*
Tin
2*/
_output_shapes
:?????????@@@?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tout
2*/
_output_shapes
:?????????  @**
_gradient_op_typePartitionedCall-788**
config_proto

GPU 

CPU2J 8*M
fHRF
D__inference_block1_pool_layer_call_and_return_conditional_losses_782*
Tin
2?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0+block2_conv1_statefulpartitionedcall_args_1+block2_conv1_statefulpartitionedcall_args_2**
_gradient_op_typePartitionedCall-811*
Tin
2**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:?????????  ?*
Tout
2*N
fIRG
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0+block2_conv2_statefulpartitionedcall_args_1+block2_conv2_statefulpartitionedcall_args_2*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-836*N
fIRG
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830*0
_output_shapes
:?????????  ??
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*M
fHRF
D__inference_block2_pool_layer_call_and_return_conditional_losses_849**
_gradient_op_typePartitionedCall-855*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0+block3_conv1_statefulpartitionedcall_args_1+block3_conv1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*
Tout
2*
Tin
2**
_gradient_op_typePartitionedCall-878*N
fIRG
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0+block3_conv2_statefulpartitionedcall_args_1+block3_conv2_statefulpartitionedcall_args_2**
_gradient_op_typePartitionedCall-903**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*N
fIRG
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897*
Tout
2*
Tin
2?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0+block3_conv3_statefulpartitionedcall_args_1+block3_conv3_statefulpartitionedcall_args_2*N
fIRG
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922**
config_proto

GPU 

CPU2J 8*
Tout
2**
_gradient_op_typePartitionedCall-928*
Tin
2*0
_output_shapes
:???????????
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2**
_gradient_op_typePartitionedCall-947*M
fHRF
D__inference_block3_pool_layer_call_and_return_conditional_losses_941?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0+block4_conv1_statefulpartitionedcall_args_1+block4_conv1_statefulpartitionedcall_args_2*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*
Tout
2**
_gradient_op_typePartitionedCall-970*
Tin
2*N
fIRG
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0+block4_conv2_statefulpartitionedcall_args_1+block4_conv2_statefulpartitionedcall_args_2*
Tout
2**
_gradient_op_typePartitionedCall-995**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*
Tin
2*N
fIRG
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0+block4_conv3_statefulpartitionedcall_args_1+block4_conv3_statefulpartitionedcall_args_2*O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014*
Tout
2*
Tin
2*0
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1020**
config_proto

GPU 

CPU2J 8?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tout
2*N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033*+
_gradient_op_typePartitionedCall-1039**
config_proto

GPU 

CPU2J 8*
Tin
2*0
_output_shapes
:???????????
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0+block5_conv1_statefulpartitionedcall_args_1+block5_conv1_statefulpartitionedcall_args_2*
Tin
2**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056*
Tout
2*0
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1062?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0+block5_conv2_statefulpartitionedcall_args_1+block5_conv2_statefulpartitionedcall_args_2*
Tin
2*+
_gradient_op_typePartitionedCall-1087**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081*
Tout
2?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0+block5_conv3_statefulpartitionedcall_args_1+block5_conv3_statefulpartitionedcall_args_2*O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106*
Tout
2*+
_gradient_op_typePartitionedCall-1112*
Tin
2*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125*0
_output_shapes
:??????????*
Tout
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1131*
Tin
2?
flatten_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*+
_gradient_op_typePartitionedCall-1196*
Tin
2**
config_proto

GPU 

CPU2J 8*(
_output_shapes
:??????????*L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1190*
Tout
2?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1214**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-1220*(
_output_shapes
:???????????
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1258*(
_output_shapes
:??????????*
Tout
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1270*
Tin
2?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tout
2*J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1286*+
_gradient_op_typePartitionedCall-1292*
Tin
2**
config_proto

GPU 

CPU2J 8*(
_output_shapes
:???????????
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*+
_gradient_op_typePartitionedCall-1342*(
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1330*
Tin
2*
Tout
2?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0&dense_3_statefulpartitionedcall_args_1&dense_3_statefulpartitionedcall_args_2*'
_output_shapes
:?????????**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1358*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-1364?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall: : : : : : : : : : :  : : : : : :
 : : : : : : :	 : : : : :' #
!
_user_specified_name	input_1: : : : 
?
?
+__inference_block4_conv2_layer_call_fn_1000

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2**
_gradient_op_typePartitionedCall-995**
config_proto

GPU 

CPU2J 8*
Tin
2*N
fIRG
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
T0k
ReluReluBiasAdd:output:0*B
_output_shapes0
.:,????????????????????????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
??
?
__inference__traced_save_2288
file_prefix2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StringJoin/inputs_1Const"/device:CPU:0*
dtype0*<
value3B1 B+_temp_5046a6d7094e40888c98130f82da9078/part*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
_output_shapes
: *
NL

num_shardsConst*
value	B :*
_output_shapes
: *
dtype0f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B? B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
: ?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop"/device:CPU:0*.
dtypes$
"2 *
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
_output_shapes
:*
dtype0q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
_output_shapes
:*
T0*
N?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1: : :! : : : : : : : : :  : : : : : :
 : : : : : : :	 : : : : :+ '
%
_user_specified_namefile_prefix: : : : 
?
`
D__inference_block3_pool_layer_call_and_return_conditional_losses_941

inputs
identity?
MaxPoolMaxPoolinputs*
strides
*J
_output_shapes8
6:4????????????????????????????????????*
paddingVALID*
ksize
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
*__inference_block2_conv2_layer_call_fn_841

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tout
2*B
_output_shapes0
.:,????????????????????????????*N
fIRG
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830**
_gradient_op_typePartitionedCall-836*
Tin
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?	
&__inference_model_1_layer_call_fn_1637
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30#
statefulpartitionedcall_args_31#
statefulpartitionedcall_args_32
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30statefulpartitionedcall_args_31statefulpartitionedcall_args_32*'
_output_shapes
:?????????*
Tout
2*+
_gradient_op_typePartitionedCall-1602*,
Tin%
#2!*J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1601**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : : : : : : :  : : : : : :
 : : : : : : :	 : : : : :' #
!
_user_specified_name	input_1: : : : 
?
?
&__inference_dense_1_layer_call_fn_2061

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2*(
_output_shapes
:??????????*J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1214*+
_gradient_op_typePartitionedCall-1220*
Tin
2**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?	
&__inference_model_1_layer_call_fn_1995

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30#
statefulpartitionedcall_args_31#
statefulpartitionedcall_args_32
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30statefulpartitionedcall_args_31statefulpartitionedcall_args_32*,
Tin%
#2!*
Tout
2**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1501*+
_gradient_op_typePartitionedCall-1502*'
_output_shapes
:??????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : : : : : : :  : : : : : :
 : : : : : : :	 : : : : :& "
 
_user_specified_nameinputs: : : : 
?
?
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingSAME*B
_output_shapes0
.:,?????????????????????????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
??
?
__inference__wrapped_model_724
input_17
3model_1_block1_conv1_conv2d_readvariableop_resource8
4model_1_block1_conv1_biasadd_readvariableop_resource7
3model_1_block1_conv2_conv2d_readvariableop_resource8
4model_1_block1_conv2_biasadd_readvariableop_resource7
3model_1_block2_conv1_conv2d_readvariableop_resource8
4model_1_block2_conv1_biasadd_readvariableop_resource7
3model_1_block2_conv2_conv2d_readvariableop_resource8
4model_1_block2_conv2_biasadd_readvariableop_resource7
3model_1_block3_conv1_conv2d_readvariableop_resource8
4model_1_block3_conv1_biasadd_readvariableop_resource7
3model_1_block3_conv2_conv2d_readvariableop_resource8
4model_1_block3_conv2_biasadd_readvariableop_resource7
3model_1_block3_conv3_conv2d_readvariableop_resource8
4model_1_block3_conv3_biasadd_readvariableop_resource7
3model_1_block4_conv1_conv2d_readvariableop_resource8
4model_1_block4_conv1_biasadd_readvariableop_resource7
3model_1_block4_conv2_conv2d_readvariableop_resource8
4model_1_block4_conv2_biasadd_readvariableop_resource7
3model_1_block4_conv3_conv2d_readvariableop_resource8
4model_1_block4_conv3_biasadd_readvariableop_resource7
3model_1_block5_conv1_conv2d_readvariableop_resource8
4model_1_block5_conv1_biasadd_readvariableop_resource7
3model_1_block5_conv2_conv2d_readvariableop_resource8
4model_1_block5_conv2_biasadd_readvariableop_resource7
3model_1_block5_conv3_conv2d_readvariableop_resource8
4model_1_block5_conv3_biasadd_readvariableop_resource2
.model_1_dense_1_matmul_readvariableop_resource3
/model_1_dense_1_biasadd_readvariableop_resource2
.model_1_dense_2_matmul_readvariableop_resource3
/model_1_dense_2_biasadd_readvariableop_resource2
.model_1_dense_3_matmul_readvariableop_resource3
/model_1_dense_3_biasadd_readvariableop_resource
identity??+model_1/block1_conv1/BiasAdd/ReadVariableOp?*model_1/block1_conv1/Conv2D/ReadVariableOp?+model_1/block1_conv2/BiasAdd/ReadVariableOp?*model_1/block1_conv2/Conv2D/ReadVariableOp?+model_1/block2_conv1/BiasAdd/ReadVariableOp?*model_1/block2_conv1/Conv2D/ReadVariableOp?+model_1/block2_conv2/BiasAdd/ReadVariableOp?*model_1/block2_conv2/Conv2D/ReadVariableOp?+model_1/block3_conv1/BiasAdd/ReadVariableOp?*model_1/block3_conv1/Conv2D/ReadVariableOp?+model_1/block3_conv2/BiasAdd/ReadVariableOp?*model_1/block3_conv2/Conv2D/ReadVariableOp?+model_1/block3_conv3/BiasAdd/ReadVariableOp?*model_1/block3_conv3/Conv2D/ReadVariableOp?+model_1/block4_conv1/BiasAdd/ReadVariableOp?*model_1/block4_conv1/Conv2D/ReadVariableOp?+model_1/block4_conv2/BiasAdd/ReadVariableOp?*model_1/block4_conv2/Conv2D/ReadVariableOp?+model_1/block4_conv3/BiasAdd/ReadVariableOp?*model_1/block4_conv3/Conv2D/ReadVariableOp?+model_1/block5_conv1/BiasAdd/ReadVariableOp?*model_1/block5_conv1/Conv2D/ReadVariableOp?+model_1/block5_conv2/BiasAdd/ReadVariableOp?*model_1/block5_conv2/Conv2D/ReadVariableOp?+model_1/block5_conv3/BiasAdd/ReadVariableOp?*model_1/block5_conv3/Conv2D/ReadVariableOp?&model_1/dense_1/BiasAdd/ReadVariableOp?%model_1/dense_1/MatMul/ReadVariableOp?&model_1/dense_2/BiasAdd/ReadVariableOp?%model_1/dense_2/MatMul/ReadVariableOp?&model_1/dense_3/BiasAdd/ReadVariableOp?%model_1/dense_3/MatMul/ReadVariableOp?
*model_1/block1_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block1_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
:@*
dtype0?
model_1/block1_conv1/Conv2DConv2Dinput_12model_1/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*
paddingSAME*/
_output_shapes
:?????????@@@*
strides
?
+model_1/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block1_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:@*
dtype0?
model_1/block1_conv1/BiasAddBiasAdd$model_1/block1_conv1/Conv2D:output:03model_1/block1_conv1/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
T0?
model_1/block1_conv1/ReluRelu%model_1/block1_conv1/BiasAdd:output:0*/
_output_shapes
:?????????@@@*
T0?
*model_1/block1_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block1_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
:@@*
dtype0?
model_1/block1_conv2/Conv2DConv2D'model_1/block1_conv1/Relu:activations:02model_1/block1_conv2/Conv2D/ReadVariableOp:value:0*
paddingSAME*
T0*/
_output_shapes
:?????????@@@*
strides
?
+model_1/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block1_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:@*
dtype0?
model_1/block1_conv2/BiasAddBiasAdd$model_1/block1_conv2/Conv2D:output:03model_1/block1_conv2/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
T0?
model_1/block1_conv2/ReluRelu%model_1/block1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
model_1/block1_pool/MaxPoolMaxPool'model_1/block1_conv2/Relu:activations:0*
strides
*/
_output_shapes
:?????????  @*
paddingVALID*
ksize
?
*model_1/block2_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block2_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:@?*
dtype0?
model_1/block2_conv1/Conv2DConv2D$model_1/block1_pool/MaxPool:output:02model_1/block2_conv1/Conv2D/ReadVariableOp:value:0*
paddingSAME*
strides
*0
_output_shapes
:?????????  ?*
T0?
+model_1/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block2_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
model_1/block2_conv1/BiasAddBiasAdd$model_1/block2_conv1/Conv2D:output:03model_1/block2_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:?????????  ?*
T0?
model_1/block2_conv1/ReluRelu%model_1/block2_conv1/BiasAdd:output:0*0
_output_shapes
:?????????  ?*
T0?
*model_1/block2_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block2_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block2_conv2/Conv2DConv2D'model_1/block2_conv1/Relu:activations:02model_1/block2_conv2/Conv2D/ReadVariableOp:value:0*0
_output_shapes
:?????????  ?*
strides
*
paddingSAME*
T0?
+model_1/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block2_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/block2_conv2/BiasAddBiasAdd$model_1/block2_conv2/Conv2D:output:03model_1/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ??
model_1/block2_conv2/ReluRelu%model_1/block2_conv2/BiasAdd:output:0*0
_output_shapes
:?????????  ?*
T0?
model_1/block2_pool/MaxPoolMaxPool'model_1/block2_conv2/Relu:activations:0*
ksize
*
paddingVALID*0
_output_shapes
:??????????*
strides
?
*model_1/block3_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block3_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
model_1/block3_conv1/Conv2DConv2D$model_1/block2_pool/MaxPool:output:02model_1/block3_conv1/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*0
_output_shapes
:??????????*
T0?
+model_1/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block3_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/block3_conv1/BiasAddBiasAdd$model_1/block3_conv1/Conv2D:output:03model_1/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
model_1/block3_conv1/ReluRelu%model_1/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
*model_1/block3_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block3_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block3_conv2/Conv2DConv2D'model_1/block3_conv1/Relu:activations:02model_1/block3_conv2/Conv2D/ReadVariableOp:value:0*
strides
*0
_output_shapes
:??????????*
T0*
paddingSAME?
+model_1/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block3_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/block3_conv2/BiasAddBiasAdd$model_1/block3_conv2/Conv2D:output:03model_1/block3_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0?
model_1/block3_conv2/ReluRelu%model_1/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
*model_1/block3_conv3/Conv2D/ReadVariableOpReadVariableOp3model_1_block3_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block3_conv3/Conv2DConv2D'model_1/block3_conv2/Relu:activations:02model_1/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*
strides
*0
_output_shapes
:??????????*
paddingSAME?
+model_1/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp4model_1_block3_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/block3_conv3/BiasAddBiasAdd$model_1/block3_conv3/Conv2D:output:03model_1/block3_conv3/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0?
model_1/block3_conv3/ReluRelu%model_1/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
model_1/block3_pool/MaxPoolMaxPool'model_1/block3_conv3/Relu:activations:0*0
_output_shapes
:??????????*
paddingVALID*
strides
*
ksize
?
*model_1/block4_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block4_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block4_conv1/Conv2DConv2D$model_1/block3_pool/MaxPool:output:02model_1/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*
paddingSAME*0
_output_shapes
:??????????*
strides
?
+model_1/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block4_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
model_1/block4_conv1/BiasAddBiasAdd$model_1/block4_conv1/Conv2D:output:03model_1/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
model_1/block4_conv1/ReluRelu%model_1/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
*model_1/block4_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block4_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
model_1/block4_conv2/Conv2DConv2D'model_1/block4_conv1/Relu:activations:02model_1/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
+model_1/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block4_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
model_1/block4_conv2/BiasAddBiasAdd$model_1/block4_conv2/Conv2D:output:03model_1/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
model_1/block4_conv2/ReluRelu%model_1/block4_conv2/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
*model_1/block4_conv3/Conv2D/ReadVariableOpReadVariableOp3model_1_block4_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block4_conv3/Conv2DConv2D'model_1/block4_conv2/Relu:activations:02model_1/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*
strides
*0
_output_shapes
:??????????*
paddingSAME?
+model_1/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp4model_1_block4_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/block4_conv3/BiasAddBiasAdd$model_1/block4_conv3/Conv2D:output:03model_1/block4_conv3/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0?
model_1/block4_conv3/ReluRelu%model_1/block4_conv3/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
model_1/block4_pool/MaxPoolMaxPool'model_1/block4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
paddingVALID*
strides
*
ksize
?
*model_1/block5_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block5_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block5_conv1/Conv2DConv2D$model_1/block4_pool/MaxPool:output:02model_1/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
strides
*
paddingSAME?
+model_1/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block5_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
model_1/block5_conv1/BiasAddBiasAdd$model_1/block5_conv1/Conv2D:output:03model_1/block5_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0?
model_1/block5_conv1/ReluRelu%model_1/block5_conv1/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
*model_1/block5_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block5_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block5_conv2/Conv2DConv2D'model_1/block5_conv1/Relu:activations:02model_1/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*
strides
*0
_output_shapes
:??????????*
paddingSAME?
+model_1/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block5_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/block5_conv2/BiasAddBiasAdd$model_1/block5_conv2/Conv2D:output:03model_1/block5_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0?
model_1/block5_conv2/ReluRelu%model_1/block5_conv2/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
*model_1/block5_conv3/Conv2D/ReadVariableOpReadVariableOp3model_1_block5_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
model_1/block5_conv3/Conv2DConv2D'model_1/block5_conv2/Relu:activations:02model_1/block5_conv3/Conv2D/ReadVariableOp:value:0*0
_output_shapes
:??????????*
paddingSAME*
T0*
strides
?
+model_1/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp4model_1_block5_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
model_1/block5_conv3/BiasAddBiasAdd$model_1/block5_conv3/Conv2D:output:03model_1/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
model_1/block5_conv3/ReluRelu%model_1/block5_conv3/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
model_1/block5_pool/MaxPoolMaxPool'model_1/block5_conv3/Relu:activations:0*
paddingVALID*0
_output_shapes
:??????????*
ksize
*
strides
p
model_1/flatten_1/Reshape/shapeConst*
valueB"????   *
_output_shapes
:*
dtype0?
model_1/flatten_1/ReshapeReshape$model_1/block5_pool/MaxPool:output:0(model_1/flatten_1/Reshape/shape:output:0*(
_output_shapes
:??????????*
T0?
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0* 
_output_shapes
:
???
model_1/dense_1/MatMulMatMul"model_1/flatten_1/Reshape:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0q
model_1/dense_1/ReluRelu model_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????}
model_1/dropout_1/IdentityIdentity"model_1/dense_1/Relu:activations:0*
T0*(
_output_shapes
:???????????
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp.model_1_dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0* 
_output_shapes
:
???
model_1/dense_2/MatMulMatMul#model_1/dropout_1/Identity:output:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
model_1/dense_2/ReluRelu model_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????}
model_1/dropout_2/IdentityIdentity"model_1/dense_2/Relu:activations:0*
T0*(
_output_shapes
:???????????
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	??
model_1/dense_3/MatMulMatMul#model_1/dropout_2/Identity:output:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0?
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0v
model_1/dense_3/SoftmaxSoftmax model_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentity!model_1/dense_3/Softmax:softmax:0,^model_1/block1_conv1/BiasAdd/ReadVariableOp+^model_1/block1_conv1/Conv2D/ReadVariableOp,^model_1/block1_conv2/BiasAdd/ReadVariableOp+^model_1/block1_conv2/Conv2D/ReadVariableOp,^model_1/block2_conv1/BiasAdd/ReadVariableOp+^model_1/block2_conv1/Conv2D/ReadVariableOp,^model_1/block2_conv2/BiasAdd/ReadVariableOp+^model_1/block2_conv2/Conv2D/ReadVariableOp,^model_1/block3_conv1/BiasAdd/ReadVariableOp+^model_1/block3_conv1/Conv2D/ReadVariableOp,^model_1/block3_conv2/BiasAdd/ReadVariableOp+^model_1/block3_conv2/Conv2D/ReadVariableOp,^model_1/block3_conv3/BiasAdd/ReadVariableOp+^model_1/block3_conv3/Conv2D/ReadVariableOp,^model_1/block4_conv1/BiasAdd/ReadVariableOp+^model_1/block4_conv1/Conv2D/ReadVariableOp,^model_1/block4_conv2/BiasAdd/ReadVariableOp+^model_1/block4_conv2/Conv2D/ReadVariableOp,^model_1/block4_conv3/BiasAdd/ReadVariableOp+^model_1/block4_conv3/Conv2D/ReadVariableOp,^model_1/block5_conv1/BiasAdd/ReadVariableOp+^model_1/block5_conv1/Conv2D/ReadVariableOp,^model_1/block5_conv2/BiasAdd/ReadVariableOp+^model_1/block5_conv2/Conv2D/ReadVariableOp,^model_1/block5_conv3/BiasAdd/ReadVariableOp+^model_1/block5_conv3/Conv2D/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2X
*model_1/block3_conv2/Conv2D/ReadVariableOp*model_1/block3_conv2/Conv2D/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2X
*model_1/block4_conv1/Conv2D/ReadVariableOp*model_1/block4_conv1/Conv2D/ReadVariableOp2Z
+model_1/block4_conv1/BiasAdd/ReadVariableOp+model_1/block4_conv1/BiasAdd/ReadVariableOp2X
*model_1/block3_conv3/Conv2D/ReadVariableOp*model_1/block3_conv3/Conv2D/ReadVariableOp2Z
+model_1/block1_conv1/BiasAdd/ReadVariableOp+model_1/block1_conv1/BiasAdd/ReadVariableOp2Z
+model_1/block5_conv2/BiasAdd/ReadVariableOp+model_1/block5_conv2/BiasAdd/ReadVariableOp2Z
+model_1/block2_conv2/BiasAdd/ReadVariableOp+model_1/block2_conv2/BiasAdd/ReadVariableOp2Z
+model_1/block3_conv3/BiasAdd/ReadVariableOp+model_1/block3_conv3/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2X
*model_1/block4_conv2/Conv2D/ReadVariableOp*model_1/block4_conv2/Conv2D/ReadVariableOp2X
*model_1/block1_conv1/Conv2D/ReadVariableOp*model_1/block1_conv1/Conv2D/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2X
*model_1/block5_conv1/Conv2D/ReadVariableOp*model_1/block5_conv1/Conv2D/ReadVariableOp2X
*model_1/block4_conv3/Conv2D/ReadVariableOp*model_1/block4_conv3/Conv2D/ReadVariableOp2Z
+model_1/block5_conv1/BiasAdd/ReadVariableOp+model_1/block5_conv1/BiasAdd/ReadVariableOp2Z
+model_1/block2_conv1/BiasAdd/ReadVariableOp+model_1/block2_conv1/BiasAdd/ReadVariableOp2X
*model_1/block1_conv2/Conv2D/ReadVariableOp*model_1/block1_conv2/Conv2D/ReadVariableOp2Z
+model_1/block3_conv2/BiasAdd/ReadVariableOp+model_1/block3_conv2/BiasAdd/ReadVariableOp2Z
+model_1/block4_conv3/BiasAdd/ReadVariableOp+model_1/block4_conv3/BiasAdd/ReadVariableOp2X
*model_1/block5_conv2/Conv2D/ReadVariableOp*model_1/block5_conv2/Conv2D/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2X
*model_1/block2_conv1/Conv2D/ReadVariableOp*model_1/block2_conv1/Conv2D/ReadVariableOp2X
*model_1/block5_conv3/Conv2D/ReadVariableOp*model_1/block5_conv3/Conv2D/ReadVariableOp2X
*model_1/block2_conv2/Conv2D/ReadVariableOp*model_1/block2_conv2/Conv2D/ReadVariableOp2Z
+model_1/block3_conv1/BiasAdd/ReadVariableOp+model_1/block3_conv1/BiasAdd/ReadVariableOp2Z
+model_1/block4_conv2/BiasAdd/ReadVariableOp+model_1/block4_conv2/BiasAdd/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2Z
+model_1/block1_conv2/BiasAdd/ReadVariableOp+model_1/block1_conv2/BiasAdd/ReadVariableOp2X
*model_1/block3_conv1/Conv2D/ReadVariableOp*model_1/block3_conv1/Conv2D/ReadVariableOp2Z
+model_1/block5_conv3/BiasAdd/ReadVariableOp+model_1/block5_conv3/BiasAdd/ReadVariableOp: : : : : : : : : : :  : : : : : :
 : : : : : : :	 : : : : :' #
!
_user_specified_name	input_1: : : : 
?
?	
&__inference_model_1_layer_call_fn_1537
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30#
statefulpartitionedcall_args_31#
statefulpartitionedcall_args_32
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30statefulpartitionedcall_args_31statefulpartitionedcall_args_32*,
Tin%
#2!*'
_output_shapes
:?????????**
config_proto

GPU 

CPU2J 8*
Tout
2*+
_gradient_op_typePartitionedCall-1502*J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1501?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : : :	 : : : : :' #
!
_user_specified_name	input_1: : : : : : : : : : : : : : :  : : : : : :
 
?
E
)__inference_block1_pool_layer_call_fn_791

inputs
identity?
PartitionedCallPartitionedCallinputs*M
fHRF
D__inference_block1_pool_layer_call_and_return_conditional_losses_782**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-788*J
_output_shapes8
6:4????????????????????????????????????*
Tin
2*
Tout
2?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
a
(__inference_dropout_2_layer_call_fn_2144

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1323*(
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1334*
Tin
2*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*&
_output_shapes
:@@?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
paddingSAME*
T0*A
_output_shapes/
-:+???????????????????????????@*
strides
?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:@*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@j
ReluReluBiasAdd:output:0*A
_output_shapes/
-:+???????????????????????????@*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*A
_output_shapes/
-:+???????????????????????????@*
T0"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?p
?
A__inference_model_1_layer_call_and_return_conditional_losses_1601

inputs/
+block1_conv1_statefulpartitionedcall_args_1/
+block1_conv1_statefulpartitionedcall_args_2/
+block1_conv2_statefulpartitionedcall_args_1/
+block1_conv2_statefulpartitionedcall_args_2/
+block2_conv1_statefulpartitionedcall_args_1/
+block2_conv1_statefulpartitionedcall_args_2/
+block2_conv2_statefulpartitionedcall_args_1/
+block2_conv2_statefulpartitionedcall_args_2/
+block3_conv1_statefulpartitionedcall_args_1/
+block3_conv1_statefulpartitionedcall_args_2/
+block3_conv2_statefulpartitionedcall_args_1/
+block3_conv2_statefulpartitionedcall_args_2/
+block3_conv3_statefulpartitionedcall_args_1/
+block3_conv3_statefulpartitionedcall_args_2/
+block4_conv1_statefulpartitionedcall_args_1/
+block4_conv1_statefulpartitionedcall_args_2/
+block4_conv2_statefulpartitionedcall_args_1/
+block4_conv2_statefulpartitionedcall_args_2/
+block4_conv3_statefulpartitionedcall_args_1/
+block4_conv3_statefulpartitionedcall_args_2/
+block5_conv1_statefulpartitionedcall_args_1/
+block5_conv1_statefulpartitionedcall_args_2/
+block5_conv2_statefulpartitionedcall_args_1/
+block5_conv2_statefulpartitionedcall_args_2/
+block5_conv3_statefulpartitionedcall_args_1/
+block5_conv3_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2*
&dense_3_statefulpartitionedcall_args_1*
&dense_3_statefulpartitionedcall_args_2
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputs+block1_conv1_statefulpartitionedcall_args_1+block1_conv1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:?????????@@@**
_gradient_op_typePartitionedCall-744*
Tin
2*
Tout
2*N
fIRG
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0+block1_conv2_statefulpartitionedcall_args_1+block1_conv2_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763*/
_output_shapes
:?????????@@@*
Tin
2**
_gradient_op_typePartitionedCall-769*
Tout
2?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*M
fHRF
D__inference_block1_pool_layer_call_and_return_conditional_losses_782*/
_output_shapes
:?????????  @**
_gradient_op_typePartitionedCall-788*
Tout
2*
Tin
2?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0+block2_conv1_statefulpartitionedcall_args_1+block2_conv1_statefulpartitionedcall_args_2*
Tin
2**
_gradient_op_typePartitionedCall-811*
Tout
2**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:?????????  ?*N
fIRG
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0+block2_conv2_statefulpartitionedcall_args_1+block2_conv2_statefulpartitionedcall_args_2**
_gradient_op_typePartitionedCall-836*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830*0
_output_shapes
:?????????  ??
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0**
_gradient_op_typePartitionedCall-855*0
_output_shapes
:??????????*
Tout
2**
config_proto

GPU 

CPU2J 8*M
fHRF
D__inference_block2_pool_layer_call_and_return_conditional_losses_849*
Tin
2?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0+block3_conv1_statefulpartitionedcall_args_1+block3_conv1_statefulpartitionedcall_args_2*N
fIRG
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872*
Tout
2**
_gradient_op_typePartitionedCall-878*
Tin
2**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:???????????
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0+block3_conv2_statefulpartitionedcall_args_1+block3_conv2_statefulpartitionedcall_args_2*N
fIRG
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*
Tin
2**
_gradient_op_typePartitionedCall-903*
Tout
2?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0+block3_conv3_statefulpartitionedcall_args_1+block3_conv3_statefulpartitionedcall_args_2*N
fIRG
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922**
config_proto

GPU 

CPU2J 8*
Tin
2**
_gradient_op_typePartitionedCall-928*
Tout
2*0
_output_shapes
:???????????
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*M
fHRF
D__inference_block3_pool_layer_call_and_return_conditional_losses_941**
_gradient_op_typePartitionedCall-947?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0+block4_conv1_statefulpartitionedcall_args_1+block4_conv1_statefulpartitionedcall_args_2**
_gradient_op_typePartitionedCall-970*
Tout
2*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964*
Tin
2?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0+block4_conv2_statefulpartitionedcall_args_1+block4_conv2_statefulpartitionedcall_args_2*0
_output_shapes
:??????????*
Tin
2**
_gradient_op_typePartitionedCall-995*N
fIRG
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989*
Tout
2**
config_proto

GPU 

CPU2J 8?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0+block4_conv3_statefulpartitionedcall_args_1+block4_conv3_statefulpartitionedcall_args_2*0
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1020*
Tout
2*O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014**
config_proto

GPU 

CPU2J 8?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*
Tin
2*0
_output_shapes
:??????????*
Tout
2*+
_gradient_op_typePartitionedCall-1039*N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0+block5_conv1_statefulpartitionedcall_args_1+block5_conv1_statefulpartitionedcall_args_2*0
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1062*
Tout
2**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0+block5_conv2_statefulpartitionedcall_args_1+block5_conv2_statefulpartitionedcall_args_2*0
_output_shapes
:??????????*
Tout
2*+
_gradient_op_typePartitionedCall-1087**
config_proto

GPU 

CPU2J 8*
Tin
2*O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0+block5_conv3_statefulpartitionedcall_args_1+block5_conv3_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1112*
Tout
2*0
_output_shapes
:??????????*
Tin
2**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125*+
_gradient_op_typePartitionedCall-1131**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:???????????
flatten_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*(
_output_shapes
:??????????*L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1190*
Tout
2*+
_gradient_op_typePartitionedCall-1196*
Tin
2?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*(
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1220*
Tout
2*J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1214**
config_proto

GPU 

CPU2J 8?
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1258*
Tout
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1270*
Tin
2*(
_output_shapes
:???????????
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*(
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1292*
Tout
2*
Tin
2*J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1286?
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*(
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1342*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1330?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0&dense_3_statefulpartitionedcall_args_1&dense_3_statefulpartitionedcall_args_2*'
_output_shapes
:?????????*+
_gradient_op_typePartitionedCall-1364*J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1358*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall: : : : : : :	 : : : : :& "
 
_user_specified_nameinputs: : : : : : : : : : : : : : :  : : : : : :
 
??
?
A__inference_model_1_layer_call_and_return_conditional_losses_1958

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??#block1_conv1/BiasAdd/ReadVariableOp?"block1_conv1/Conv2D/ReadVariableOp?#block1_conv2/BiasAdd/ReadVariableOp?"block1_conv2/Conv2D/ReadVariableOp?#block2_conv1/BiasAdd/ReadVariableOp?"block2_conv1/Conv2D/ReadVariableOp?#block2_conv2/BiasAdd/ReadVariableOp?"block2_conv2/Conv2D/ReadVariableOp?#block3_conv1/BiasAdd/ReadVariableOp?"block3_conv1/Conv2D/ReadVariableOp?#block3_conv2/BiasAdd/ReadVariableOp?"block3_conv2/Conv2D/ReadVariableOp?#block3_conv3/BiasAdd/ReadVariableOp?"block3_conv3/Conv2D/ReadVariableOp?#block4_conv1/BiasAdd/ReadVariableOp?"block4_conv1/Conv2D/ReadVariableOp?#block4_conv2/BiasAdd/ReadVariableOp?"block4_conv2/Conv2D/ReadVariableOp?#block4_conv3/BiasAdd/ReadVariableOp?"block4_conv3/Conv2D/ReadVariableOp?#block5_conv1/BiasAdd/ReadVariableOp?"block5_conv1/Conv2D/ReadVariableOp?#block5_conv2/BiasAdd/ReadVariableOp?"block5_conv2/Conv2D/ReadVariableOp?#block5_conv3/BiasAdd/ReadVariableOp?"block5_conv3/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
:@*
dtype0?
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
strides
*
paddingSAME*
T0?
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:@*
dtype0?
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@r
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
:@@*
dtype0?
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*
T0*/
_output_shapes
:?????????@@@?
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:@*
dtype0?
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
T0r
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*
strides
*
ksize
*/
_output_shapes
:?????????  @*
paddingVALID?
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:@?*
dtype0?
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
strides
*0
_output_shapes
:?????????  ?*
paddingSAME*
T0?
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?s
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*0
_output_shapes
:?????????  ?*
T0?
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
strides
*0
_output_shapes
:?????????  ?*
T0*
paddingSAME?
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:?????????  ?*
T0s
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*0
_output_shapes
:?????????  ?*
T0?
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:??????????*
strides
*
paddingVALID*
ksize
?
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*
strides
*0
_output_shapes
:??????????*
paddingSAME?
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*
paddingSAME*0
_output_shapes
:??????????*
strides
?
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
paddingSAME*
strides
*
T0*0
_output_shapes
:???????????
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*
strides
*
paddingVALID*0
_output_shapes
:??????????*
ksize
?
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*0
_output_shapes
:??????????*
T0?
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*0
_output_shapes
:??????????*
T0?
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*0
_output_shapes
:??????????*
strides
*
T0*
paddingSAME?
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*
strides
*
paddingVALID*0
_output_shapes
:??????????*
ksize
?
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*
strides
*
paddingSAME*0
_output_shapes
:???????????
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*
T0*0
_output_shapes
:???????????
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*
T0*0
_output_shapes
:???????????
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:??????????*
strides
*
paddingVALID*
ksize
h
flatten_1/Reshape/shapeConst*
valueB"????   *
_output_shapes
:*
dtype0?
flatten_1/ReshapeReshapeblock5_pool/MaxPool:output:0 flatten_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??*
dtype0?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????m
dropout_1/IdentityIdentitydense_1/Relu:activations:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??*
dtype0?
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_2/ReluReludense_2/BiasAdd:output:0*(
_output_shapes
:??????????*
T0m
dropout_2/IdentityIdentitydense_2/Relu:activations:0*(
_output_shapes
:??????????*
T0?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?*
dtype0?
dense_3/MatMulMatMuldropout_2/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:??????????	
IdentityIdentitydense_3/Softmax:softmax:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp: : : : : : :	 : : : : :& "
 
_user_specified_nameinputs: : : : : : : : : : : : : : :  : : : : : :
 
?
?
*__inference_block4_conv1_layer_call_fn_975

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964**
_gradient_op_typePartitionedCall-970*
Tout
2*B
_output_shapes0
.:,????????????????????????????*
Tin
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_2038

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_2139

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
*__inference_block1_conv1_layer_call_fn_749

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738*A
_output_shapes/
-:+???????????????????????????@**
_gradient_op_typePartitionedCall-744*
Tin
2*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?s
?
A__inference_model_1_layer_call_and_return_conditional_losses_1501

inputs/
+block1_conv1_statefulpartitionedcall_args_1/
+block1_conv1_statefulpartitionedcall_args_2/
+block1_conv2_statefulpartitionedcall_args_1/
+block1_conv2_statefulpartitionedcall_args_2/
+block2_conv1_statefulpartitionedcall_args_1/
+block2_conv1_statefulpartitionedcall_args_2/
+block2_conv2_statefulpartitionedcall_args_1/
+block2_conv2_statefulpartitionedcall_args_2/
+block3_conv1_statefulpartitionedcall_args_1/
+block3_conv1_statefulpartitionedcall_args_2/
+block3_conv2_statefulpartitionedcall_args_1/
+block3_conv2_statefulpartitionedcall_args_2/
+block3_conv3_statefulpartitionedcall_args_1/
+block3_conv3_statefulpartitionedcall_args_2/
+block4_conv1_statefulpartitionedcall_args_1/
+block4_conv1_statefulpartitionedcall_args_2/
+block4_conv2_statefulpartitionedcall_args_1/
+block4_conv2_statefulpartitionedcall_args_2/
+block4_conv3_statefulpartitionedcall_args_1/
+block4_conv3_statefulpartitionedcall_args_2/
+block5_conv1_statefulpartitionedcall_args_1/
+block5_conv1_statefulpartitionedcall_args_2/
+block5_conv2_statefulpartitionedcall_args_1/
+block5_conv2_statefulpartitionedcall_args_2/
+block5_conv3_statefulpartitionedcall_args_1/
+block5_conv3_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2*
&dense_3_statefulpartitionedcall_args_1*
&dense_3_statefulpartitionedcall_args_2
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputs+block1_conv1_statefulpartitionedcall_args_1+block1_conv1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-744*N
fIRG
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738*/
_output_shapes
:?????????@@@*
Tin
2*
Tout
2?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0+block1_conv2_statefulpartitionedcall_args_1+block1_conv2_statefulpartitionedcall_args_2*N
fIRG
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763*
Tin
2*/
_output_shapes
:?????????@@@*
Tout
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-769?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tout
2**
config_proto

GPU 

CPU2J 8*/
_output_shapes
:?????????  @*M
fHRF
D__inference_block1_pool_layer_call_and_return_conditional_losses_782*
Tin
2**
_gradient_op_typePartitionedCall-788?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0+block2_conv1_statefulpartitionedcall_args_1+block2_conv1_statefulpartitionedcall_args_2*0
_output_shapes
:?????????  ?*
Tin
2**
_gradient_op_typePartitionedCall-811*
Tout
2*N
fIRG
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805**
config_proto

GPU 

CPU2J 8?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0+block2_conv2_statefulpartitionedcall_args_1+block2_conv2_statefulpartitionedcall_args_2*0
_output_shapes
:?????????  ?*
Tin
2*
Tout
2*N
fIRG
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-836?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????**
_gradient_op_typePartitionedCall-855*
Tin
2*M
fHRF
D__inference_block2_pool_layer_call_and_return_conditional_losses_849*
Tout
2?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0+block3_conv1_statefulpartitionedcall_args_1+block3_conv1_statefulpartitionedcall_args_2**
_gradient_op_typePartitionedCall-878*
Tin
2**
config_proto

GPU 

CPU2J 8*
Tout
2*N
fIRG
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872*0
_output_shapes
:???????????
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0+block3_conv2_statefulpartitionedcall_args_1+block3_conv2_statefulpartitionedcall_args_2*N
fIRG
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897*
Tout
2*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*
Tin
2**
_gradient_op_typePartitionedCall-903?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0+block3_conv3_statefulpartitionedcall_args_1+block3_conv3_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tout
2*0
_output_shapes
:??????????**
_gradient_op_typePartitionedCall-928*N
fIRG
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922*
Tin
2?
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-947*M
fHRF
D__inference_block3_pool_layer_call_and_return_conditional_losses_941?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0+block4_conv1_statefulpartitionedcall_args_1+block4_conv1_statefulpartitionedcall_args_2*
Tin
2*N
fIRG
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964**
_gradient_op_typePartitionedCall-970**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:??????????*
Tout
2?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0+block4_conv2_statefulpartitionedcall_args_1+block4_conv2_statefulpartitionedcall_args_2*
Tin
2**
_gradient_op_typePartitionedCall-995*0
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*
Tout
2*N
fIRG
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0+block4_conv3_statefulpartitionedcall_args_1+block4_conv3_statefulpartitionedcall_args_2*0
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1020*
Tin
2**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014*
Tout
2?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*+
_gradient_op_typePartitionedCall-1039**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033*
Tout
2*0
_output_shapes
:???????????
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0+block5_conv1_statefulpartitionedcall_args_1+block5_conv1_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1062*0
_output_shapes
:??????????*O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0+block5_conv2_statefulpartitionedcall_args_1+block5_conv2_statefulpartitionedcall_args_2*
Tout
2*0
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1087*O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081*
Tin
2**
config_proto

GPU 

CPU2J 8?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0+block5_conv3_statefulpartitionedcall_args_1+block5_conv3_statefulpartitionedcall_args_2*0
_output_shapes
:??????????*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-1112**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*+
_gradient_op_typePartitionedCall-1131*0
_output_shapes
:??????????*N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125*
Tout
2**
config_proto

GPU 

CPU2J 8?
flatten_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tout
2*L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1190*(
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1196**
config_proto

GPU 

CPU2J 8?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*(
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1220**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1214*
Tout
2?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1251*+
_gradient_op_typePartitionedCall-1262*(
_output_shapes
:??????????*
Tin
2**
config_proto

GPU 

CPU2J 8*
Tout
2?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*(
_output_shapes
:??????????*
Tin
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1292*J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1286*
Tout
2?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1323*
Tout
2*(
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1334?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0&dense_3_statefulpartitionedcall_args_1&dense_3_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1364*'
_output_shapes
:?????????*
Tin
2*J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1358**
config_proto

GPU 

CPU2J 8*
Tout
2?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall: : : : : : :	 : : : : :& "
 
_user_specified_nameinputs: : : : : : : : : : : : : : :  : : : : : :
 
?
`
D__inference_block1_pool_layer_call_and_return_conditional_losses_782

inputs
identity?
MaxPoolMaxPoolinputs*
paddingVALID*
strides
*
ksize
*J
_output_shapes8
6:4????????????????????????????????????{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
D
(__inference_dropout_2_layer_call_fn_2149

inputs
identity?
PartitionedCallPartitionedCallinputs**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-1342*L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1330*(
_output_shapes
:??????????a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?	
&__inference_model_1_layer_call_fn_2032

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30#
statefulpartitionedcall_args_31#
statefulpartitionedcall_args_32
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30statefulpartitionedcall_args_31statefulpartitionedcall_args_32*J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_1601*
Tout
2*'
_output_shapes
:?????????*,
Tin%
#2!*+
_gradient_op_typePartitionedCall-1602**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : :  : : : : : :
 : : : : : : :	 : : : : :& "
 
_user_specified_nameinputs: : : : : : : : : : : : 
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_1258

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*(
_output_shapes
:??????????*
T0"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,?????????????????????????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
T0k
ReluReluBiasAdd:output:0*B
_output_shapes0
.:,????????????????????????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
*__inference_block2_conv1_layer_call_fn_816

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805*
Tout
2*
Tin
2**
_gradient_op_typePartitionedCall-811*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
+__inference_block5_conv2_layer_call_fn_1092

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081*
Tout
2*B
_output_shapes0
.:,????????????????????????????*+
_gradient_op_typePartitionedCall-1087**
config_proto

GPU 

CPU2J 8*
Tin
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_2086

inputs

identity_1O
IdentityIdentityinputs*(
_output_shapes
:??????????*
T0\

Identity_1IdentityIdentity:output:0*(
_output_shapes
:??????????*
T0"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*
paddingSAME*
strides
*B
_output_shapes0
.:,?????????????????????????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????k
ReluReluBiasAdd:output:0*B
_output_shapes0
.:,????????????????????????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????k
ReluReluBiasAdd:output:0*B
_output_shapes0
.:,????????????????????????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
T0*
strides
*
paddingSAME?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
T0k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
T0*
strides
?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:@?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*A
_output_shapes/
-:+???????????????????????????@*
T0j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?x
?
 __inference__traced_restore_2397
file_prefix(
$assignvariableop_block1_conv1_kernel(
$assignvariableop_1_block1_conv1_bias*
&assignvariableop_2_block1_conv2_kernel(
$assignvariableop_3_block1_conv2_bias*
&assignvariableop_4_block2_conv1_kernel(
$assignvariableop_5_block2_conv1_bias*
&assignvariableop_6_block2_conv2_kernel(
$assignvariableop_7_block2_conv2_bias*
&assignvariableop_8_block3_conv1_kernel(
$assignvariableop_9_block3_conv1_bias+
'assignvariableop_10_block3_conv2_kernel)
%assignvariableop_11_block3_conv2_bias+
'assignvariableop_12_block3_conv3_kernel)
%assignvariableop_13_block3_conv3_bias+
'assignvariableop_14_block4_conv1_kernel)
%assignvariableop_15_block4_conv1_bias+
'assignvariableop_16_block4_conv2_kernel)
%assignvariableop_17_block4_conv2_bias+
'assignvariableop_18_block4_conv3_kernel)
%assignvariableop_19_block4_conv3_bias+
'assignvariableop_20_block5_conv1_kernel)
%assignvariableop_21_block5_conv1_bias+
'assignvariableop_22_block5_conv2_kernel)
%assignvariableop_23_block5_conv2_bias+
'assignvariableop_24_block5_conv3_kernel)
%assignvariableop_25_block5_conv3_bias&
"assignvariableop_26_dense_1_kernel$
 assignvariableop_27_dense_1_bias&
"assignvariableop_28_dense_2_kernel$
 assignvariableop_29_dense_2_bias&
"assignvariableop_30_dense_3_kernel$
 assignvariableop_31_dense_3_bias
identity_33??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B? B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
: ?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
: *S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*.
dtypes$
"2 *?
_output_shapes?
?::::::::::::::::::::::::::::::::L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp$assignvariableop_block1_conv1_kernelIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block1_conv1_biasIdentity_1:output:0*
_output_shapes
 *
dtype0N

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv2_kernelIdentity_2:output:0*
dtype0*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
_output_shapes
:*
T0?
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv2_biasIdentity_3:output:0*
_output_shapes
 *
dtype0N

Identity_4IdentityRestoreV2:tensors:4*
_output_shapes
:*
T0?
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block2_conv1_kernelIdentity_4:output:0*
_output_shapes
 *
dtype0N

Identity_5IdentityRestoreV2:tensors:5*
_output_shapes
:*
T0?
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block2_conv1_biasIdentity_5:output:0*
dtype0*
_output_shapes
 N

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block2_conv2_kernelIdentity_6:output:0*
_output_shapes
 *
dtype0N

Identity_7IdentityRestoreV2:tensors:7*
_output_shapes
:*
T0?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block2_conv2_biasIdentity_7:output:0*
_output_shapes
 *
dtype0N

Identity_8IdentityRestoreV2:tensors:8*
_output_shapes
:*
T0?
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block3_conv1_kernelIdentity_8:output:0*
_output_shapes
 *
dtype0N

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block3_conv1_biasIdentity_9:output:0*
dtype0*
_output_shapes
 P
Identity_10IdentityRestoreV2:tensors:10*
_output_shapes
:*
T0?
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block3_conv2_kernelIdentity_10:output:0*
dtype0*
_output_shapes
 P
Identity_11IdentityRestoreV2:tensors:11*
_output_shapes
:*
T0?
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block3_conv2_biasIdentity_11:output:0*
_output_shapes
 *
dtype0P
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv3_kernelIdentity_12:output:0*
dtype0*
_output_shapes
 P
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv3_biasIdentity_13:output:0*
dtype0*
_output_shapes
 P
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block4_conv1_kernelIdentity_14:output:0*
dtype0*
_output_shapes
 P
Identity_15IdentityRestoreV2:tensors:15*
_output_shapes
:*
T0?
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block4_conv1_biasIdentity_15:output:0*
_output_shapes
 *
dtype0P
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block4_conv2_kernelIdentity_16:output:0*
_output_shapes
 *
dtype0P
Identity_17IdentityRestoreV2:tensors:17*
_output_shapes
:*
T0?
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block4_conv2_biasIdentity_17:output:0*
dtype0*
_output_shapes
 P
Identity_18IdentityRestoreV2:tensors:18*
_output_shapes
:*
T0?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv3_kernelIdentity_18:output:0*
_output_shapes
 *
dtype0P
Identity_19IdentityRestoreV2:tensors:19*
_output_shapes
:*
T0?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv3_biasIdentity_19:output:0*
_output_shapes
 *
dtype0P
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block5_conv1_kernelIdentity_20:output:0*
dtype0*
_output_shapes
 P
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block5_conv1_biasIdentity_21:output:0*
_output_shapes
 *
dtype0P
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block5_conv2_kernelIdentity_22:output:0*
dtype0*
_output_shapes
 P
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block5_conv2_biasIdentity_23:output:0*
dtype0*
_output_shapes
 P
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv3_kernelIdentity_24:output:0*
dtype0*
_output_shapes
 P
Identity_25IdentityRestoreV2:tensors:25*
_output_shapes
:*
T0?
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv3_biasIdentity_25:output:0*
dtype0*
_output_shapes
 P
Identity_26IdentityRestoreV2:tensors:26*
_output_shapes
:*
T0?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_1_kernelIdentity_26:output:0*
_output_shapes
 *
dtype0P
Identity_27IdentityRestoreV2:tensors:27*
_output_shapes
:*
T0?
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_1_biasIdentity_27:output:0*
_output_shapes
 *
dtype0P
Identity_28IdentityRestoreV2:tensors:28*
_output_shapes
:*
T0?
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_2_kernelIdentity_28:output:0*
dtype0*
_output_shapes
 P
Identity_29IdentityRestoreV2:tensors:29*
_output_shapes
:*
T0?
AssignVariableOp_29AssignVariableOp assignvariableop_29_dense_2_biasIdentity_29:output:0*
_output_shapes
 *
dtype0P
Identity_30IdentityRestoreV2:tensors:30*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_3_kernelIdentity_30:output:0*
dtype0*
_output_shapes
 P
Identity_31IdentityRestoreV2:tensors:31*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_3_biasIdentity_31:output:0*
dtype0*
_output_shapes
 ?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
dtypes
2*
_output_shapes
:1
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: ?
Identity_33IdentityIdentity_32:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: "#
identity_33Identity_33:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112
RestoreV2_1RestoreV2_12*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_31AssignVariableOp_312$
AssignVariableOpAssignVariableOp2*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV2: : :  : : : : : :
 : : : : : : :	 : : : : :+ '
%
_user_specified_namefile_prefix: : : : : : : : : : : : 
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_2054

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:?w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?	
"__inference_signature_wrapper_1676
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9#
statefulpartitionedcall_args_10#
statefulpartitionedcall_args_11#
statefulpartitionedcall_args_12#
statefulpartitionedcall_args_13#
statefulpartitionedcall_args_14#
statefulpartitionedcall_args_15#
statefulpartitionedcall_args_16#
statefulpartitionedcall_args_17#
statefulpartitionedcall_args_18#
statefulpartitionedcall_args_19#
statefulpartitionedcall_args_20#
statefulpartitionedcall_args_21#
statefulpartitionedcall_args_22#
statefulpartitionedcall_args_23#
statefulpartitionedcall_args_24#
statefulpartitionedcall_args_25#
statefulpartitionedcall_args_26#
statefulpartitionedcall_args_27#
statefulpartitionedcall_args_28#
statefulpartitionedcall_args_29#
statefulpartitionedcall_args_30#
statefulpartitionedcall_args_31#
statefulpartitionedcall_args_32
identity??StatefulPartitionedCall?

StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9statefulpartitionedcall_args_10statefulpartitionedcall_args_11statefulpartitionedcall_args_12statefulpartitionedcall_args_13statefulpartitionedcall_args_14statefulpartitionedcall_args_15statefulpartitionedcall_args_16statefulpartitionedcall_args_17statefulpartitionedcall_args_18statefulpartitionedcall_args_19statefulpartitionedcall_args_20statefulpartitionedcall_args_21statefulpartitionedcall_args_22statefulpartitionedcall_args_23statefulpartitionedcall_args_24statefulpartitionedcall_args_25statefulpartitionedcall_args_26statefulpartitionedcall_args_27statefulpartitionedcall_args_28statefulpartitionedcall_args_29statefulpartitionedcall_args_30statefulpartitionedcall_args_31statefulpartitionedcall_args_32*,
Tin%
#2!*+
_gradient_op_typePartitionedCall-1641**
config_proto

GPU 

CPU2J 8*
Tout
2*'
_output_shapes
:?????????*'
f"R 
__inference__wrapped_model_724?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : :  : : : : : :
 : : : : : : :	 : : : : :' #
!
_user_specified_name	input_1: : : : : : : : : : : : 
?
?
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
strides
*
paddingSAME?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
&__inference_dense_2_layer_call_fn_2114

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2*(
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1292*J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1286**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033

inputs
identity?
MaxPoolMaxPoolinputs*
strides
*J
_output_shapes8
6:4????????????????????????????????????*
paddingVALID*
ksize
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
?
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*
T0*B
_output_shapes0
.:,?????????????????????????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????k
ReluReluBiasAdd:output:0*B
_output_shapes0
.:,????????????????????????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
*__inference_block1_conv2_layer_call_fn_774

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*N
fIRG
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763**
config_proto

GPU 

CPU2J 8*
Tin
2*A
_output_shapes/
-:+???????????????????????????@*
Tout
2**
_gradient_op_typePartitionedCall-769?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
+__inference_block5_conv1_layer_call_fn_1067

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*B
_output_shapes0
.:,????????????????????????????*O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056*
Tin
2*
Tout
2*+
_gradient_op_typePartitionedCall-1062**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?	
?
A__inference_dense_3_layer_call_and_return_conditional_losses_2160

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
+__inference_block5_conv3_layer_call_fn_1117

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*B
_output_shapes0
.:,????????????????????????????*O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106**
config_proto

GPU 

CPU2J 8*
Tin
2*+
_gradient_op_typePartitionedCall-1112*
Tout
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
+__inference_block4_conv3_layer_call_fn_1025

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*B
_output_shapes0
.:,????????????????????????????*O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1020*
Tout
2*
Tin
2?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_1251

inputs
identity?Q
dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *   ?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:_
dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0_
dropout/random_uniform/maxConst*
valueB
 *  ??*
_output_shapes
: *
dtype0?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
dtype0*(
_output_shapes
:???????????
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0R
dropout/sub/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*(
_output_shapes
:??????????*
T0b
dropout/mulMulinputsdropout/truediv:z:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*(
_output_shapes
:??????????*

DstT0*

SrcT0
j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?	
?
A__inference_dense_3_layer_call_and_return_conditional_losses_1358

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0V
SoftmaxSoftmaxBiasAdd:output:0*'
_output_shapes
:?????????*
T0?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*/
_input_shapes
:??????????::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
?
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
paddingSAME*
T0*
strides
*B
_output_shapes0
.:,?????????????????????????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
T0k
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,?????????????????????????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_1214

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_1286

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0* 
_output_shapes
:
??j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:???????????
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?
D
(__inference_dropout_1_layer_call_fn_2096

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tout
2*(
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1270*L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1258*
Tin
2a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
F
*__inference_block4_pool_layer_call_fn_1042

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033*J
_output_shapes8
6:4????????????????????????????????????*+
_gradient_op_typePartitionedCall-1039?
IdentityIdentityPartitionedCall:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
E
)__inference_block3_pool_layer_call_fn_950

inputs
identity?
PartitionedCallPartitionedCallinputs**
_gradient_op_typePartitionedCall-947*
Tin
2**
config_proto

GPU 

CPU2J 8*J
_output_shapes8
6:4????????????????????????????????????*M
fHRF
D__inference_block3_pool_layer_call_and_return_conditional_losses_941*
Tout
2?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
a
(__inference_dropout_1_layer_call_fn_2091

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1262*
Tout
2*
Tin
2*(
_output_shapes
:??????????*L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1251?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
?
?
*__inference_block3_conv2_layer_call_fn_908

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2**
config_proto

GPU 

CPU2J 8*
Tin
2**
_gradient_op_typePartitionedCall-903*B
_output_shapes0
.:,????????????????????????????*N
fIRG
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
??
?
A__inference_model_1_layer_call_and_return_conditional_losses_1833

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??#block1_conv1/BiasAdd/ReadVariableOp?"block1_conv1/Conv2D/ReadVariableOp?#block1_conv2/BiasAdd/ReadVariableOp?"block1_conv2/Conv2D/ReadVariableOp?#block2_conv1/BiasAdd/ReadVariableOp?"block2_conv1/Conv2D/ReadVariableOp?#block2_conv2/BiasAdd/ReadVariableOp?"block2_conv2/Conv2D/ReadVariableOp?#block3_conv1/BiasAdd/ReadVariableOp?"block3_conv1/Conv2D/ReadVariableOp?#block3_conv2/BiasAdd/ReadVariableOp?"block3_conv2/Conv2D/ReadVariableOp?#block3_conv3/BiasAdd/ReadVariableOp?"block3_conv3/Conv2D/ReadVariableOp?#block4_conv1/BiasAdd/ReadVariableOp?"block4_conv1/Conv2D/ReadVariableOp?#block4_conv2/BiasAdd/ReadVariableOp?"block4_conv2/Conv2D/ReadVariableOp?#block4_conv3/BiasAdd/ReadVariableOp?"block4_conv3/Conv2D/ReadVariableOp?#block5_conv1/BiasAdd/ReadVariableOp?"block5_conv1/Conv2D/ReadVariableOp?#block5_conv2/BiasAdd/ReadVariableOp?"block5_conv2/Conv2D/ReadVariableOp?#block5_conv3/BiasAdd/ReadVariableOp?"block5_conv3/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*&
_output_shapes
:@?
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
*
T0?
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:@*
dtype0?
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
T0r
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*/
_output_shapes
:?????????@@@*
T0?
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*&
_output_shapes
:@@?
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
strides
*
paddingSAME*
T0?
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:@?
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*/
_output_shapes
:?????????@@@*
T0r
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*
strides
*
paddingVALID*/
_output_shapes
:?????????  @*
ksize
?
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*'
_output_shapes
:@??
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*0
_output_shapes
:?????????  ?*
strides
*
paddingSAME*
T0?
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:?????????  ?*
T0s
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*0
_output_shapes
:?????????  ?*
T0?
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*0
_output_shapes
:?????????  ?*
T0?
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:?????????  ?*
T0s
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*0
_output_shapes
:?????????  ?*
T0?
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*
ksize
*
paddingVALID*0
_output_shapes
:??????????*
strides
?
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*
T0*0
_output_shapes
:???????????
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*0
_output_shapes
:??????????*
T0?
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*0
_output_shapes
:??????????*
paddingSAME*
strides
*
T0?
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*
strides
*
paddingVALID*0
_output_shapes
:??????????*
ksize
?
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
strides
*
paddingSAME*0
_output_shapes
:??????????*
T0?
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
strides
*
T0*
paddingSAME*0
_output_shapes
:???????????
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*0
_output_shapes
:??????????*
paddingSAME*
strides
*
T0?
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
strides
*
paddingVALID?
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
strides
*
T0*0
_output_shapes
:??????????*
paddingSAME?
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*0
_output_shapes
:??????????*
T0?
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*(
_output_shapes
:??*
dtype0?
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
paddingSAME*
T0*0
_output_shapes
:??????????*
strides
?
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????*
T0s
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*(
_output_shapes
:???
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
strides
*
T0*0
_output_shapes
:??????????*
paddingSAME?
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????s
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*
paddingVALID*0
_output_shapes
:??????????*
ksize
*
strides
h
flatten_1/Reshape/shapeConst*
_output_shapes
:*
valueB"????   *
dtype0?
flatten_1/ReshapeReshapeblock5_pool/MaxPool:output:0 flatten_1/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??*
dtype0?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:?*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????[
dropout_1/dropout/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0a
dropout_1/dropout/ShapeShapedense_1/Relu:activations:0*
_output_shapes
:*
T0i
$dropout_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: i
$dropout_1/dropout/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ??*
dtype0?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*(
_output_shapes
:??????????*
dtype0*
T0?
$dropout_1/dropout/random_uniform/subSub-dropout_1/dropout/random_uniform/max:output:0-dropout_1/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
$dropout_1/dropout/random_uniform/mulMul7dropout_1/dropout/random_uniform/RandomUniform:output:0(dropout_1/dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
 dropout_1/dropout/random_uniformAdd(dropout_1/dropout/random_uniform/mul:z:0-dropout_1/dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????\
dropout_1/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
dropout_1/dropout/subSub dropout_1/dropout/sub/x:output:0dropout_1/dropout/rate:output:0*
T0*
_output_shapes
: `
dropout_1/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
dropout_1/dropout/truedivRealDiv$dropout_1/dropout/truediv/x:output:0dropout_1/dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout_1/dropout/GreaterEqualGreaterEqual$dropout_1/dropout/random_uniform:z:0dropout_1/dropout/rate:output:0*(
_output_shapes
:??????????*
T0?
dropout_1/dropout/mulMuldense_1/Relu:activations:0dropout_1/dropout/truediv:z:0*(
_output_shapes
:??????????*
T0?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*(
_output_shapes
:??????????*

DstT0*

SrcT0
?
dropout_1/dropout/mul_1Muldropout_1/dropout/mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0* 
_output_shapes
:
???
dense_2/MatMulMatMuldropout_1/dropout/mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_2/ReluReludense_2/BiasAdd:output:0*(
_output_shapes
:??????????*
T0[
dropout_2/dropout/rateConst*
_output_shapes
: *
valueB
 *   ?*
dtype0a
dropout_2/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:i
$dropout_2/dropout/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    i
$dropout_2/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
dtype0*
T0*(
_output_shapes
:???????????
$dropout_2/dropout/random_uniform/subSub-dropout_2/dropout/random_uniform/max:output:0-dropout_2/dropout/random_uniform/min:output:0*
T0*
_output_shapes
: ?
$dropout_2/dropout/random_uniform/mulMul7dropout_2/dropout/random_uniform/RandomUniform:output:0(dropout_2/dropout/random_uniform/sub:z:0*(
_output_shapes
:??????????*
T0?
 dropout_2/dropout/random_uniformAdd(dropout_2/dropout/random_uniform/mul:z:0-dropout_2/dropout/random_uniform/min:output:0*
T0*(
_output_shapes
:??????????\
dropout_2/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
dropout_2/dropout/subSub dropout_2/dropout/sub/x:output:0dropout_2/dropout/rate:output:0*
T0*
_output_shapes
: `
dropout_2/dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ???
dropout_2/dropout/truedivRealDiv$dropout_2/dropout/truediv/x:output:0dropout_2/dropout/sub:z:0*
T0*
_output_shapes
: ?
dropout_2/dropout/GreaterEqualGreaterEqual$dropout_2/dropout/random_uniform:z:0dropout_2/dropout/rate:output:0*(
_output_shapes
:??????????*
T0?
dropout_2/dropout/mulMuldense_2/Relu:activations:0dropout_2/dropout/truediv:z:0*
T0*(
_output_shapes
:???????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

SrcT0
*

DstT0*(
_output_shapes
:???????????
dropout_2/dropout/mul_1Muldropout_2/dropout/mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	?*
dtype0?
dense_3/MatMulMatMuldropout_2/dropout/mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:?????????*
T0f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*'
_output_shapes
:?????????*
T0?	
IdentityIdentitydense_3/Softmax:softmax:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp: : :  : : : : : :
 : : : : : : :	 : : : : :& "
 
_user_specified_nameinputs: : : : : : : : : : : : 
?
`
D__inference_block2_pool_layer_call_and_return_conditional_losses_849

inputs
identity?
MaxPoolMaxPoolinputs*
paddingVALID*J
_output_shapes8
6:4????????????????????????????????????*
strides
*
ksize
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
E
)__inference_block2_pool_layer_call_fn_858

inputs
identity?
PartitionedCallPartitionedCallinputs*J
_output_shapes8
6:4????????????????????????????????????*M
fHRF
D__inference_block2_pool_layer_call_and_return_conditional_losses_849*
Tin
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-855*
Tout
2?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_2107

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:?w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0Q
ReluReluBiasAdd:output:0*(
_output_shapes
:??????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
?s
?
A__inference_model_1_layer_call_and_return_conditional_losses_1376
input_1/
+block1_conv1_statefulpartitionedcall_args_1/
+block1_conv1_statefulpartitionedcall_args_2/
+block1_conv2_statefulpartitionedcall_args_1/
+block1_conv2_statefulpartitionedcall_args_2/
+block2_conv1_statefulpartitionedcall_args_1/
+block2_conv1_statefulpartitionedcall_args_2/
+block2_conv2_statefulpartitionedcall_args_1/
+block2_conv2_statefulpartitionedcall_args_2/
+block3_conv1_statefulpartitionedcall_args_1/
+block3_conv1_statefulpartitionedcall_args_2/
+block3_conv2_statefulpartitionedcall_args_1/
+block3_conv2_statefulpartitionedcall_args_2/
+block3_conv3_statefulpartitionedcall_args_1/
+block3_conv3_statefulpartitionedcall_args_2/
+block4_conv1_statefulpartitionedcall_args_1/
+block4_conv1_statefulpartitionedcall_args_2/
+block4_conv2_statefulpartitionedcall_args_1/
+block4_conv2_statefulpartitionedcall_args_2/
+block4_conv3_statefulpartitionedcall_args_1/
+block4_conv3_statefulpartitionedcall_args_2/
+block5_conv1_statefulpartitionedcall_args_1/
+block5_conv1_statefulpartitionedcall_args_2/
+block5_conv2_statefulpartitionedcall_args_1/
+block5_conv2_statefulpartitionedcall_args_2/
+block5_conv3_statefulpartitionedcall_args_1/
+block5_conv3_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2*
&dense_3_statefulpartitionedcall_args_1*
&dense_3_statefulpartitionedcall_args_2
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1+block1_conv1_statefulpartitionedcall_args_1+block1_conv1_statefulpartitionedcall_args_2*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-744*N
fIRG
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738*/
_output_shapes
:?????????@@@?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0+block1_conv2_statefulpartitionedcall_args_1+block1_conv2_statefulpartitionedcall_args_2*
Tin
2*N
fIRG
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763*
Tout
2*/
_output_shapes
:?????????@@@**
_gradient_op_typePartitionedCall-769**
config_proto

GPU 

CPU2J 8?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*/
_output_shapes
:?????????  @*
Tin
2**
_gradient_op_typePartitionedCall-788*M
fHRF
D__inference_block1_pool_layer_call_and_return_conditional_losses_782*
Tout
2**
config_proto

GPU 

CPU2J 8?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0+block2_conv1_statefulpartitionedcall_args_1+block2_conv1_statefulpartitionedcall_args_2*0
_output_shapes
:?????????  ?*
Tout
2*N
fIRG
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805*
Tin
2**
_gradient_op_typePartitionedCall-811**
config_proto

GPU 

CPU2J 8?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0+block2_conv2_statefulpartitionedcall_args_1+block2_conv2_statefulpartitionedcall_args_2*
Tout
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-836*
Tin
2*0
_output_shapes
:?????????  ?*N
fIRG
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*M
fHRF
D__inference_block2_pool_layer_call_and_return_conditional_losses_849**
_gradient_op_typePartitionedCall-855**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*0
_output_shapes
:???????????
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0+block3_conv1_statefulpartitionedcall_args_1+block3_conv1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-878*
Tout
2*N
fIRG
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872*
Tin
2*0
_output_shapes
:???????????
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0+block3_conv2_statefulpartitionedcall_args_1+block3_conv2_statefulpartitionedcall_args_2*
Tin
2**
config_proto

GPU 

CPU2J 8**
_gradient_op_typePartitionedCall-903*0
_output_shapes
:??????????*N
fIRG
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897*
Tout
2?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0+block3_conv3_statefulpartitionedcall_args_1+block3_conv3_statefulpartitionedcall_args_2*
Tin
2**
_gradient_op_typePartitionedCall-928*0
_output_shapes
:??????????*N
fIRG
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922*
Tout
2**
config_proto

GPU 

CPU2J 8?
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*
Tout
2*0
_output_shapes
:??????????*M
fHRF
D__inference_block3_pool_layer_call_and_return_conditional_losses_941*
Tin
2**
_gradient_op_typePartitionedCall-947?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0+block4_conv1_statefulpartitionedcall_args_1+block4_conv1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964**
_gradient_op_typePartitionedCall-970*
Tin
2*0
_output_shapes
:??????????*
Tout
2?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0+block4_conv2_statefulpartitionedcall_args_1+block4_conv2_statefulpartitionedcall_args_2**
_gradient_op_typePartitionedCall-995**
config_proto

GPU 

CPU2J 8*N
fIRG
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989*0
_output_shapes
:??????????*
Tout
2*
Tin
2?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0+block4_conv3_statefulpartitionedcall_args_1+block4_conv3_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014*
Tout
2*0
_output_shapes
:??????????*
Tin
2*+
_gradient_op_typePartitionedCall-1020?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*+
_gradient_op_typePartitionedCall-1039*0
_output_shapes
:??????????*N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033**
config_proto

GPU 

CPU2J 8*
Tout
2?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0+block5_conv1_statefulpartitionedcall_args_1+block5_conv1_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1062*
Tin
2*O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056*0
_output_shapes
:??????????*
Tout
2**
config_proto

GPU 

CPU2J 8?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0+block5_conv2_statefulpartitionedcall_args_1+block5_conv2_statefulpartitionedcall_args_2*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081*+
_gradient_op_typePartitionedCall-1087*0
_output_shapes
:???????????
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0+block5_conv3_statefulpartitionedcall_args_1+block5_conv3_statefulpartitionedcall_args_2*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-1112*O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106**
config_proto

GPU 

CPU2J 8*0
_output_shapes
:???????????
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*
Tout
2*N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125*
Tin
2*+
_gradient_op_typePartitionedCall-1131*0
_output_shapes
:???????????
flatten_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tout
2*(
_output_shapes
:??????????*L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1190*
Tin
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1196?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tin
2*(
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1220**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1214*
Tout
2?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*(
_output_shapes
:??????????*+
_gradient_op_typePartitionedCall-1262*L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1251*
Tout
2**
config_proto

GPU 

CPU2J 8?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tout
2*J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1286*
Tin
2*+
_gradient_op_typePartitionedCall-1292*(
_output_shapes
:??????????**
config_proto

GPU 

CPU2J 8?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1323*+
_gradient_op_typePartitionedCall-1334*(
_output_shapes
:???????????
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0&dense_3_statefulpartitionedcall_args_1&dense_3_statefulpartitionedcall_args_2*'
_output_shapes
:?????????*
Tout
2*
Tin
2*J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1358**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1364?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*?
_input_shapes?
?:?????????@@::::::::::::::::::::::::::::::::2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall: : :  : : : : : :
 : : : : : : :	 : : : : :' #
!
_user_specified_name	input_1: : : : : : : : : : : : 
?
?
*__inference_block3_conv3_layer_call_fn_933

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*B
_output_shapes0
.:,????????????????????????????*N
fIRG
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2**
_gradient_op_typePartitionedCall-928?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:,????????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
D
(__inference_flatten_1_layer_call_fn_2043

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tout
2*(
_output_shapes
:??????????*L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_1190*
Tin
2**
config_proto

GPU 

CPU2J 8*+
_gradient_op_typePartitionedCall-1196a
IdentityIdentityPartitionedCall:output:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*/
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_2081

inputs
identity?Q
dropout/rateConst*
dtype0*
valueB
 *   ?*
_output_shapes
: C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:_
dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: _
dropout/random_uniform/maxConst*
dtype0*
valueB
 *  ??*
_output_shapes
: ?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
dtype0*(
_output_shapes
:??????????*
T0?
dropout/random_uniform/subSub#dropout/random_uniform/max:output:0#dropout/random_uniform/min:output:0*
_output_shapes
: *
T0?
dropout/random_uniform/mulMul-dropout/random_uniform/RandomUniform:output:0dropout/random_uniform/sub:z:0*
T0*(
_output_shapes
:???????????
dropout/random_uniformAdddropout/random_uniform/mul:z:0#dropout/random_uniform/min:output:0*(
_output_shapes
:??????????*
T0R
dropout/sub/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: b
dropout/subSubdropout/sub/x:output:0dropout/rate:output:0*
T0*
_output_shapes
: V
dropout/truediv/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: h
dropout/truedivRealDivdropout/truediv/x:output:0dropout/sub:z:0*
_output_shapes
: *
T0?
dropout/GreaterEqualGreaterEqualdropout/random_uniform:z:0dropout/rate:output:0*(
_output_shapes
:??????????*
T0b
dropout/mulMulinputsdropout/truediv:z:0*(
_output_shapes
:??????????*
T0p
dropout/CastCastdropout/GreaterEqual:z:0*

SrcT0
*(
_output_shapes
:??????????*

DstT0j
dropout/mul_1Muldropout/mul:z:0dropout/Cast:y:0*(
_output_shapes
:??????????*
T0Z
IdentityIdentitydropout/mul_1:z:0*(
_output_shapes
:??????????*
T0"
identityIdentity:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125

inputs
identity?
MaxPoolMaxPoolinputs*
paddingVALID*
strides
*J
_output_shapes8
6:4????????????????????????????????????*
ksize
{
IdentityIdentityMaxPool:output:0*J
_output_shapes8
6:4????????????????????????????????????*
T0"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:& "
 
_user_specified_nameinputs
?
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_1190

inputs
identity^
Reshape/shapeConst*
valueB"????   *
_output_shapes
:*
dtype0e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*/
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_1330

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*(
_output_shapes
:??????????*
T0"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:& "
 
_user_specified_nameinputs
?
?
&__inference_dense_3_layer_call_fn_2167

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1358*'
_output_shapes
:?????????*
Tout
2*
Tin
2*+
_gradient_op_typePartitionedCall-1364**
config_proto

GPU 

CPU2J 8?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
?
?
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????*
strides
*
paddingSAME?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:??
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*B
_output_shapes0
.:,????????????????????????????*
T0k
ReluReluBiasAdd:output:0*B
_output_shapes0
.:,????????????????????????????*
T0?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*B
_output_shapes0
.:,????????????????????????????*
T0"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????@::2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????@@;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
layer-23
layer_with_weights-15
layer-24
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_model??{"class_name": "Model", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 64, 64, 3], "dtype": "float32", "sparse": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["block5_pool", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["flatten_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 30, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dropout_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 64, 64, 3], "dtype": "float32", "sparse": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["block5_pool", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["flatten_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 30, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dropout_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0]]}}}
?
	variables
 regularization_losses
!trainable_variables
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "InputLayer", "name": "input_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": [null, 64, 64, 3], "config": {"batch_input_shape": [null, 64, 64, 3], "dtype": "float32", "sparse": false, "name": "input_1"}}
?

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 3}}}}
?

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}}
?
/	variables
0regularization_losses
1trainable_variables
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}}
?

9kernel
:bias
;	variables
<regularization_losses
=trainable_variables
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}}
?
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Ckernel
Dbias
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}}
?

Ikernel
Jbias
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}}}
?

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}}}
?
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Ykernel
Zbias
[	variables
\regularization_losses
]trainable_variables
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}}}
?

_kernel
`bias
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block4_conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block4_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}}}
?

ekernel
fbias
g	variables
hregularization_losses
itrainable_variables
j	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block4_conv3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block4_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}}}
?
k	variables
lregularization_losses
mtrainable_variables
n	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block4_pool", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block4_pool", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

okernel
pbias
q	variables
rregularization_losses
strainable_variables
t	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block5_conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block5_conv1", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}}}
?

ukernel
vbias
w	variables
xregularization_losses
ytrainable_variables
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block5_conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block5_conv2", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}}}
?

{kernel
|bias
}	variables
~regularization_losses
trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block5_conv3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block5_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": [3, 3], "strides": [1, 1], "padding": "same", "data_format": "channels_last", "dilation_rate": [1, 1], "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block5_pool", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "block5_pool", "trainable": true, "dtype": "float32", "pool_size": [2, 2], "padding": "valid", "strides": [2, 2], "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2048}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 30, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}}
?
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
?26
?27
?28
?29
?30
?31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_0
`1
e2
f3
o4
p5
u6
v7
{8
|9
?10
?11
?12
?13
?14
?15"
trackable_list_wrapper
?
	variables
?non_trainable_variables
?layers
regularization_losses
 ?layer_regularization_losses
?metrics
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
 regularization_losses
?metrics
!trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
%	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
&regularization_losses
?metrics
'trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
+	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
,regularization_losses
?metrics
-trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
0regularization_losses
?metrics
1trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@?2block2_conv1/kernel
 :?2block2_conv1/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
5	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
6regularization_losses
?metrics
7trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block2_conv2/kernel
 :?2block2_conv2/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
;	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
<regularization_losses
?metrics
=trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
@regularization_losses
?metrics
Atrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block3_conv1/kernel
 :?2block3_conv1/bias
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
E	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Fregularization_losses
?metrics
Gtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block3_conv2/kernel
 :?2block3_conv2/bias
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
K	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Lregularization_losses
?metrics
Mtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block3_conv3/kernel
 :?2block3_conv3/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Q	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Rregularization_losses
?metrics
Strainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
U	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
Vregularization_losses
?metrics
Wtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block4_conv1/kernel
 :?2block4_conv1/bias
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
[	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
\regularization_losses
?metrics
]trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block4_conv2/kernel
 :?2block4_conv2/bias
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
?
a	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
bregularization_losses
?metrics
ctrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block4_conv3/kernel
 :?2block4_conv3/bias
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
?
g	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
hregularization_losses
?metrics
itrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
k	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
lregularization_losses
?metrics
mtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block5_conv1/kernel
 :?2block5_conv1/bias
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
?
q	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
rregularization_losses
?metrics
strainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block5_conv2/kernel
 :?2block5_conv2/bias
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
?
w	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
xregularization_losses
?metrics
ytrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2block5_conv3/kernel
 :?2block5_conv3/bias
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
?
}	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
~regularization_losses
?metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_1/kernel
:?2dense_1/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_2/kernel
:?2dense_2/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_3/kernel
:2dense_3/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?layers
 ?layer_regularization_losses
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15"
trackable_list_wrapper
?
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
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
A__inference_model_1_layer_call_and_return_conditional_losses_1833
A__inference_model_1_layer_call_and_return_conditional_losses_1376
A__inference_model_1_layer_call_and_return_conditional_losses_1958
A__inference_model_1_layer_call_and_return_conditional_losses_1438?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_724?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????@@
?2?
&__inference_model_1_layer_call_fn_1537
&__inference_model_1_layer_call_fn_2032
&__inference_model_1_layer_call_fn_1637
&__inference_model_1_layer_call_fn_1995?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
*__inference_block1_conv1_layer_call_fn_749?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
*__inference_block1_conv2_layer_call_fn_774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
D__inference_block1_pool_layer_call_and_return_conditional_losses_782?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_block1_pool_layer_call_fn_791?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
*__inference_block2_conv1_layer_call_fn_816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
*__inference_block2_conv2_layer_call_fn_841?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
D__inference_block2_pool_layer_call_and_return_conditional_losses_849?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_block2_pool_layer_call_fn_858?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
*__inference_block3_conv1_layer_call_fn_883?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
*__inference_block3_conv2_layer_call_fn_908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
*__inference_block3_conv3_layer_call_fn_933?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
D__inference_block3_pool_layer_call_and_return_conditional_losses_941?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
)__inference_block3_pool_layer_call_fn_950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
*__inference_block4_conv1_layer_call_fn_975?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
+__inference_block4_conv2_layer_call_fn_1000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
+__inference_block4_conv3_layer_call_fn_1025?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_block4_pool_layer_call_fn_1042?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
+__inference_block5_conv1_layer_call_fn_1067?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
+__inference_block5_conv2_layer_call_fn_1092?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
+__inference_block5_conv3_layer_call_fn_1117?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_block5_pool_layer_call_fn_1134?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_flatten_1_layer_call_and_return_conditional_losses_2038?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_flatten_1_layer_call_fn_2043?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_2054?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_2061?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dropout_1_layer_call_and_return_conditional_losses_2081
C__inference_dropout_1_layer_call_and_return_conditional_losses_2086?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dropout_1_layer_call_fn_2096
(__inference_dropout_1_layer_call_fn_2091?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dense_2_layer_call_and_return_conditional_losses_2107?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_2_layer_call_fn_2114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dropout_2_layer_call_and_return_conditional_losses_2134
C__inference_dropout_2_layer_call_and_return_conditional_losses_2139?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dropout_2_layer_call_fn_2149
(__inference_dropout_2_layer_call_fn_2144?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dense_3_layer_call_and_return_conditional_losses_2160?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_3_layer_call_fn_2167?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
1B/
"__inference_signature_wrapper_1676input_1?
C__inference_dropout_2_layer_call_and_return_conditional_losses_2139^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_block5_conv1_layer_call_and_return_conditional_losses_1056?opJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_block1_conv1_layer_call_and_return_conditional_losses_738?#$I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????@
? }
&__inference_dense_2_layer_call_fn_2114S??0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dropout_2_layer_call_and_return_conditional_losses_2134^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
&__inference_model_1_layer_call_fn_2032?&#$)*349:CDIJOPYZ_`efopuv{|????????<
5?2
(?%
inputs?????????@@
p 

 
? "???????????
E__inference_block3_conv1_layer_call_and_return_conditional_losses_872?CDJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
*__inference_block3_conv2_layer_call_fn_908?IJJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
C__inference_flatten_1_layer_call_and_return_conditional_losses_2038b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
E__inference_block2_conv2_layer_call_and_return_conditional_losses_830?9:J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
*__inference_block5_pool_layer_call_fn_1134?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_dropout_1_layer_call_and_return_conditional_losses_2086^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? }
&__inference_dense_1_layer_call_fn_2061S??0?-
&?#
!?
inputs??????????
? "????????????
&__inference_model_1_layer_call_fn_1995?&#$)*349:CDIJOPYZ_`efopuv{|????????<
5?2
(?%
inputs?????????@@
p

 
? "???????????
*__inference_block3_conv1_layer_call_fn_883?CDJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_block4_conv3_layer_call_and_return_conditional_losses_1014?efJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_block2_conv1_layer_call_and_return_conditional_losses_805?34I?F
??<
:?7
inputs+???????????????????????????@
? "@?=
6?3
0,????????????????????????????
? ?
A__inference_dense_1_layer_call_and_return_conditional_losses_2054`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
"__inference_signature_wrapper_1676?&#$)*349:CDIJOPYZ_`efopuv{|??????C?@
? 
9?6
4
input_1)?&
input_1?????????@@"1?.
,
dense_3!?
dense_3??????????
+__inference_block5_conv3_layer_call_fn_1117?{|J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_block5_conv2_layer_call_and_return_conditional_losses_1081?uvJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
*__inference_block4_pool_layer_call_fn_1042?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_dropout_1_layer_call_and_return_conditional_losses_2081^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
(__inference_flatten_1_layer_call_fn_2043U8?5
.?+
)?&
inputs??????????
? "????????????
*__inference_block4_conv1_layer_call_fn_975?YZJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
+__inference_block4_conv2_layer_call_fn_1000?_`J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
D__inference_block2_pool_layer_call_and_return_conditional_losses_849?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
)__inference_block1_pool_layer_call_fn_791?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????}
(__inference_dropout_2_layer_call_fn_2144Q4?1
*?'
!?
inputs??????????
p
? "????????????
&__inference_model_1_layer_call_fn_1537?&#$)*349:CDIJOPYZ_`efopuv{|??????@?=
6?3
)?&
input_1?????????@@
p

 
? "???????????
E__inference_block1_conv2_layer_call_and_return_conditional_losses_763?)*I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
F__inference_block5_conv3_layer_call_and_return_conditional_losses_1106?{|J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
*__inference_block2_conv2_layer_call_fn_841?9:J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
+__inference_block5_conv2_layer_call_fn_1092?uvJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
E__inference_block3_conv2_layer_call_and_return_conditional_losses_897?IJJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_block5_pool_layer_call_and_return_conditional_losses_1125?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_1376?&#$)*349:CDIJOPYZ_`efopuv{|??????@?=
6?3
)?&
input_1?????????@@
p

 
? "%?"
?
0?????????
? ?
A__inference_dense_2_layer_call_and_return_conditional_losses_2107`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
*__inference_block3_conv3_layer_call_fn_933?OPJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
A__inference_dense_3_layer_call_and_return_conditional_losses_2160_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
(__inference_dropout_2_layer_call_fn_2149Q4?1
*?'
!?
inputs??????????
p 
? "????????????
A__inference_model_1_layer_call_and_return_conditional_losses_1833?&#$)*349:CDIJOPYZ_`efopuv{|????????<
5?2
(?%
inputs?????????@@
p

 
? "%?"
?
0?????????
? ?
+__inference_block5_conv1_layer_call_fn_1067?opJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,????????????????????????????}
(__inference_dropout_1_layer_call_fn_2091Q4?1
*?'
!?
inputs??????????
p
? "???????????}
(__inference_dropout_1_layer_call_fn_2096Q4?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_block4_pool_layer_call_and_return_conditional_losses_1033?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
*__inference_block1_conv2_layer_call_fn_774?)*I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
)__inference_block2_pool_layer_call_fn_858?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????|
&__inference_dense_3_layer_call_fn_2167R??0?-
&?#
!?
inputs??????????
? "???????????
A__inference_model_1_layer_call_and_return_conditional_losses_1438?&#$)*349:CDIJOPYZ_`efopuv{|??????@?=
6?3
)?&
input_1?????????@@
p 

 
? "%?"
?
0?????????
? ?
*__inference_block2_conv1_layer_call_fn_816?34I?F
??<
:?7
inputs+???????????????????????????@
? "3?0,?????????????????????????????
+__inference_block4_conv3_layer_call_fn_1025?efJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
__inference__wrapped_model_724?&#$)*349:CDIJOPYZ_`efopuv{|??????8?5
.?+
)?&
input_1?????????@@
? "1?.
,
dense_3!?
dense_3??????????
A__inference_model_1_layer_call_and_return_conditional_losses_1958?&#$)*349:CDIJOPYZ_`efopuv{|????????<
5?2
(?%
inputs?????????@@
p 

 
? "%?"
?
0?????????
? ?
D__inference_block3_pool_layer_call_and_return_conditional_losses_941?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
)__inference_block3_pool_layer_call_fn_950?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
E__inference_block4_conv2_layer_call_and_return_conditional_losses_989?_`J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
E__inference_block3_conv3_layer_call_and_return_conditional_losses_922?OPJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
&__inference_model_1_layer_call_fn_1637?&#$)*349:CDIJOPYZ_`efopuv{|??????@?=
6?3
)?&
input_1?????????@@
p 

 
? "???????????
E__inference_block4_conv1_layer_call_and_return_conditional_losses_964?YZJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
*__inference_block1_conv1_layer_call_fn_749?#$I?F
??<
:?7
inputs+???????????????????????????
? "2?/+???????????????????????????@?
D__inference_block1_pool_layer_call_and_return_conditional_losses_782?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? 