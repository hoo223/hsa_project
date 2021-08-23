from sympy import symbols,Function
from sympy import *
import sympy
import numpy as np
import matplotlib.pyplot as plt

joint_pose = np.load('../../../joint_space_pose.npy')
joint_vel = np.load('../../../joint_space_vel.npy')
joint_acc = np.load('../../../joint_space_acc.npy')

#task_pose = np.load('../../../task_space_pose.npy').transpose()
#task_vel = np.load('../../../task_space_vel.npy').transpose()
#task_acc = np.load('../../../task_space_acc.npy').transpose()

actual_pose = np.load('../../../actual_pose.npy')
actual_vel = np.load('../../../actual_vel.npy')
actual_torque = np.load('../../../actual_torque.npy')
#J_a = np.load('../../../analytic_jacobian.npy')

def init_UR10_DH_parameters():
    d1=0.1273
    a2=-0.612
    a3=-0.5723
    d4=0.163941
    d5=0.1157
    d6=0.0922

    alpha = np.array([pi/2, 0.0, 0.0, pi/2, -pi/2, 0.0])
    d = np.array([d1, 0.0, 0.0, d4, d5, d6])
    a = np.array([0.0, a2, a3, 0.0, 0.0, 0.0])
    
    return alpha,d,a

def Transformation_matrix(alpha, d, a, theta):
    A = np.array([[cos(theta),     -sin(theta)*cos(alpha),       sin(theta)*sin(alpha),      a*cos(theta)],
                  [sin(theta),      cos(theta)*cos(alpha),      -cos(theta)*sin(alpha),      a*sin(theta)],
                  [     0.0  ,            sin(alpha)     ,             cos(alpha)     ,            d      ],
                  [     0.0  ,                0.0        ,                 0.0        ,            1.0    ]])
    return A

def dummify_undefined_functions(expr):
    mapping = {}    

    # replace all Derivative terms
    for der in expr.atoms(Derivative):
        f_name = der.expr.func.__name__
        var_names = [var.name for var in der.variables]
        name = "d%s_d%s" % (f_name, 'd'.join(var_names))
        mapping[der] = Symbol(name)

    # replace undefined functions
    from sympy.core.function import AppliedUndef
    for f in expr.atoms(AppliedUndef):
        f_name = f.func.__name__
        mapping[f] = Symbol(f_name)

    return expr.subs(mapping)

def init_define_variables():
    t = symbols('t')
    th1 = Function('th1')(t)
    th2 = Function('th2')(t)
    th3 = Function('th3')(t)
    th4 = Function('th4')(t)
    th5 = Function('th5')(t)
    th6 = Function('th6')(t)    
    
    return t, th1,th2,th3,th4,th5,th6


def forward(th1,th2,th3,th4,th5,th6):
    d1 =  0.1273
    a2 = -0.612
    a3 = -0.5723
    d4 =  0.163941
    d5 =  0.1157
    d6 =  0.0922
    
    s1 = sin(th1)
    s2 = sin(th2)
    s3 = sin(th3)
    s4 = sin(th4)
    s5 = sin(th5)
    s6 = sin(th6)
    s23 = sin(th2+th3)
    s234 = sin(th2+th3+th4)
    c1 = cos(th1)
    c2 = cos(th2)
    c3 = cos(th3)
    c4 = cos(th4)
    c5 = cos(th5)
    c6 = cos(th6)
    c23 = cos(th2+th3)
    c234 = cos(th2+th3+th4) 

    t11 = c234*c1*s5 - c5*s1
    t12 = c6*(s1*s5 + c234*c1*c5) - s234*c1*s6
    t13 = -s6*(s1*s5 + c234*c1*c5) - s234*c1*c6
    t14 = d6*c234*c1*s5 - a3*c23*c1 - a2*c1*c2 - d6*c5*s1 - d5*s234*c1 - d4*s1
    
    t21 = c1*c5 + c234*s1*s5
    t22 = -c6*(c1*s5 - c234*c5*s1) - s234*s1*s6
    t23 = s6*(c1*s5 - c234*c5*s1) - s234*c6*s1
    t24 = d6*(c1*c5 + c234*s1*s5) + d4*c1 - a3*c23*s1 - a2*c2*s1 - d5*s234*s1
    
    t31= -s234*s5
    t32 = -c234*s6 - s234*c5*c6
    t33 = s234*c5*s6 - c234*c6
    t34 = d1 + a3*s23 + a2*s2 - d5*(c23*c4 - s23*s4) - d6*s5*(c23*s4 + s23*c4)
    
    t41 = 0.0
    t42 = 0.0
    t43 = 0.0
    t44 = 1.0
    

    return np.array([[t11,t12,t13,t14],[t21,t22,t23,t24],[t31,t32,t33,t34],[t41,t42,t43,t44]])


def get_task_space_values(th1,th2,th3,th4,th5,th6,alpha,d,a):
    T1 = Transformation_matrix(alpha[0],d[0],a[0],th1)
    T2 = Transformation_matrix(alpha[1],d[1],a[1],th2)
    T3 = Transformation_matrix(alpha[2],d[2],a[2],th3)
    T4 = Transformation_matrix(alpha[3],d[3],a[3],th4)
    T5 = Transformation_matrix(alpha[4],d[4],a[4],th5)
    T6 = Transformation_matrix(alpha[5],d[5],a[5],th6)

    T12 = np.matmul(T1,T2)
    T13 = np.matmul(T12,T3)
    T14 = np.matmul(T13,T4)
    T15 = np.matmul(T14,T5)
    T16 = np.matmul(T15,T6)    
    #T16 = forward(th1,th2,th3,th4,th5,th6)
    x = T16[0,3]
    y = T16[1,3]
    z = T16[2,3]

    roll = atan2(T16[1,0],T16[0,0])
    pitch = atan2(-T16[2,0],sqrt(T16[2,1]**2 + T16[2,2]**2))
    yaw = atan2(T16[2,1],T16[2,2])
    task_space = Matrix([x,y,z,roll,pitch,yaw])
    
    return task_space



def f_get_analytic_jacobian_jacobian_dot_rpy(t,th1,th2,th3,th4,th5,th6,task_space):
    J_analytic1 = task_space.diff(th1) 
    J_analytic2 = task_space.diff(th2)
    J_analytic3 = task_space.diff(th3) 
    J_analytic4 = task_space.diff(th4)
    J_analytic5 = task_space.diff(th5)
    J_analytic6 = task_space.diff(th6)

    J_analytic = Matrix()
    J_analytic = J_analytic.col_insert(0,J_analytic1) 
    J_analytic = J_analytic.col_insert(1,J_analytic2)
    J_analytic = J_analytic.col_insert(2,J_analytic3)
    J_analytic = J_analytic.col_insert(3,J_analytic4)
    J_analytic = J_analytic.col_insert(4,J_analytic5)
    J_analytic = J_analytic.col_insert(5,J_analytic6)

    J_analytic_dot = J_analytic.diff(t)

    return J_analytic, J_analytic_dot

def get_joint_velocity(J_inv,xdot):
    qdot = np.matmul(J_inv,xdot)
    return qdot

def get_joint_acceleration(J_inv,J_dot,xddot,qdot):
    qddot = np.zeros(xddot.shape)
    for i in range(qddot.shape[0]):
        qddot[i,:] = np.matmul(J_inv[i,:,:], xddot[i,:]-np.matmul(J_dot[i,:,:],qdot[i,:]))
        
    return qddot

def get_full_expression_Jacobian_Jacobian_dot(_J,_J_dot):
    J = np.zeros((_J[0][0].shape[0],6,6))
    J_dot = np.zeros((_J_dot[0][0].shape[0],6,6))
    
    for i in range(6):
        for j in range(6):
            if np.iterable(_J[i][j]) == True:
                for k in range(_J[0][0].shape[0]):
                    J[k][i][j] = _J[i][j][k]
                    
    for i in range(6):
        for j in range(6):
            if np.iterable(_J_dot[i][j]) == True:
                for k in range(_J_dot[0][0].shape[0]):
                    J_dot[k][i][j] = _J_dot[i][j][k]
        
    return J,J_dot
plt.plot(joint_vel[:,0])
plt.plot(joint_vel[:,1])
plt.plot(joint_vel[:,2])
plt.plot(joint_vel[:,3])
plt.plot(joint_vel[:,4])
plt.plot(joint_vel[:,5])

plt.plot(actual_vel[3:,0])
plt.plot(actual_vel[3:,1])
plt.plot(actual_vel[3:,2])
plt.plot(actual_vel[3:,3])
plt.plot(actual_vel[3:,4])
plt.plot(actual_vel[3:,5])
plt.show()
'''
t,th1,th2,th3,th4,th5,th6 = init_define_variables()
alpha,d,a = init_UR10_DH_parameters()
X = get_task_space_values(th1,th2,th3,th4,th5,th6,alpha,d,a)
J,J_dot = f_get_analytic_jacobian_jacobian_dot_rpy(t,th1,th2,th3,th4,th5,th6,X)

X_lambda = lambdify([th1,th2,th3,th4,th5,th6],X)
_X = X_lambda(joint_pose[:,0],joint_pose[:,1],joint_pose[:,2],joint_pose[:,3],joint_pose[:,4],joint_pose[:,5])
J_lambda = lambdify([th1,th2,th3,th4,th5,th6],J)

params = [dummify_undefined_functions(x) for x in [th1,th2,th3,th4,th5,th6,th1.diff(t),th2.diff(t),th3.diff(t),th4.diff(t),th5.diff(t),th6.diff(t)]]
J_dot_dummify_lambda = dummify_undefined_functions(J_dot)
J_dot_lambda = lambdify(params, J_dot_dummify_lambda)
print(_X[:,0,0])
_th = joint_pose
_th_dot = joint_vel
#_xddot = np.ones((100,6))

_J = J_lambda(_th[:,0],_th[:,1],_th[:,2],_th[:,3],_th[:,4],_th[:,5])#[raw][column][array index]
_J_dot = J_dot_lambda(_th[:,0],_th[:,1],_th[:,2],_th[:,3],_th[:,4],_th[:,5],_th_dot[:,0],_th_dot[:,1],_th_dot[:,2],_th_dot[:,3],_th_dot[:,4],_th_dot[:,5])
_J,_J_dot = get_full_expression_Jacobian_Jacobian_dot(_J,_J_dot)
#_J_inv = np.linalg.inv(_J)

#q_ddot = get_joint_acceleration(_J_inv,_J_dot,_xddot,_th_dot)
print(_J[0,:,:])
print(J_a.shape)
print(J_a[0,:,:])

test = np.array([])
for j in range(6):
    for i in range(101):
        test = np.append(test,(np.matmul(_J[i,:,:],_th_dot[i,:])[j]))

#plt.plot(test.reshape(6,-1)[0,:]-task_vel[:,0])
#plt.plot(test.reshape(6,-1)[1,:]-task_vel[:,1])
#plt.plot(test.reshape(6,-1)[2,:]-task_vel[:,2])
#plt.plot(test.reshape(6,-1)[3,:]-task_vel[:,3])
#plt.plot(test.reshape(6,-1)[4,:]-task_vel[:,4])
#plt.plot(test.reshape(6,-1)[5,:]-task_vel[:,5])

plt.plot(_X[0,0,:]-task_pose[:,0])
plt.plot(_X[1,0,:]-task_pose[:,1])
plt.plot(_X[2,0,:]-task_pose[:,2])
plt.plot(_X[3,0,:]-task_pose[:,3])
plt.plot(_X[4,0,:]-task_pose[:,4])
plt.plot(_X[5,0,:]-task_pose[:,5])
'''
