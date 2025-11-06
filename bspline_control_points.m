%% Control point calculatioins

clear all; close all; clc;

syms P [1 8]
syms U [1 14]
syms T
syms t1 t2 t3
p = 5;

for j = 1:7
Q(j) = (p/(U(j+p+1)-U(j+1)))*(P(j+1)-P(j));
end


for k = 1:6
R(k) = ((p-1)/(U(k+(p-1)+2)-U(k+2)))*(Q(k+1)-Q(k));
end

for l = 1:5
    S(l) = ((p-2)/(U(l+(p-2)+3)-U(l+3)))*(R(l+1)-R(l));
end


%% Joint 1
eqn1 = -(5*(P1 - P2))/U7 == 0;
eqn2 = (4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 == 0;
eqn3 = -(3*((4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 - (4*((5*(P2 - P3))/U8 - (5*(P3 - P4))/U9))/U8))/U7 == 0;
eqn4 = P1 == -pi/3;
eqn5 = P8 == 2*pi/5;
eqn6 = -(3*((4*((5*(P5 - P6))/U9 + (5*(P6 - P7))/(U7 - U9)))/(U7 - U9) + (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9)))/(U8 - U9) == 0;
eqn7 = (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9) == 0;
eqn8 = (5*(P7 - P8))/(U8 - U9) == 0;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8], [P1, P2, P3, P4, P5, P6, P7, P8])

X1 = linsolve(A,B)

% i = subs(X,[U7 U8 U9 U10 U11],[0.5 1.0 1.5 2.0 2.5])

%% Joint 2
eqn1 = -(5*(P1 - P2))/U7 == 0;
eqn2 = (4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 == 0;
eqn3 = -(3*((4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 - (4*((5*(P2 - P3))/U8 - (5*(P3 - P4))/U9))/U8))/U7 == 0;
eqn4 = P1 == 20;
eqn5 = P8 == 35;
eqn6 = -(3*((4*((5*(P5 - P6))/U9 + (5*(P6 - P7))/(U7 - U9)))/(U7 - U9) + (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9)))/(U8 - U9) == 0;
eqn7 = (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9) == 0;
eqn8 = (5*(P7 - P8))/(U8 - U9) == 0;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8], [P1, P2, P3, P4, P5, P6, P7, P8])

X2 = linsolve(A,B)


% i = subs(X,[U7 U8 U9 U10 U11],[0.5 1.0 1.5 2.0 2.5])
%% Joint 3
eqn1 = -(5*(P1 - P2))/U7 == 0;
eqn2 = (4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 == 0;
eqn3 = -(3*((4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 - (4*((5*(P2 - P3))/U8 - (5*(P3 - P4))/U9))/U8))/U7 == 0;
eqn4 = P1 == 15;
eqn5 = P8 == 30;
eqn6 = -(3*((4*((5*(P5 - P6))/U9 + (5*(P6 - P7))/(U7 - U9)))/(U7 - U9) + (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9)))/(U8 - U9) == 0;
eqn7 = (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9) == 0;
eqn8 = (5*(P7 - P8))/(U8 - U9) == 0;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8], [P1, P2, P3, P4, P5, P6, P7, P8])

X3 = linsolve(A,B)

% i = subs(X,[U7 U8 U9 U10 U11],[0.5 1.0 1.5 2.0 2.5])
%% Joint 4
eqn1 = -(5*(P1 - P2))/U7 == 0;
eqn2 = (4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 == 0;
eqn3 = -(3*((4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 - (4*((5*(P2 - P3))/U8 - (5*(P3 - P4))/U9))/U8))/U7 == 0;
eqn4 = P1 == 150;
eqn5 = P8 == 10;
eqn6 = -(3*((4*((5*(P5 - P6))/U9 + (5*(P6 - P7))/(U7 - U9)))/(U7 - U9) + (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9)))/(U8 - U9) == 0;
eqn7 = (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9) == 0;
eqn8 = (5*(P7 - P8))/(U8 - U9) == 0;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8], [P1, P2, P3, P4, P5, P6, P7, P8])

X4 = linsolve(A,B)

% i = subs(X,[U7 U8 U9 U10 U11],[0.5 1.0 1.5 2.0 2.5])
%% Joint 5
eqn1 = -(5*(P1 - P2))/U7 == 0;
eqn2 = (4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 == 0;
eqn3 = -(3*((4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 - (4*((5*(P2 - P3))/U8 - (5*(P3 - P4))/U9))/U8))/U7 == 0;
eqn4 = P1 == 30;
eqn5 = P8 == 70;
eqn6 = -(3*((4*((5*(P5 - P6))/U9 + (5*(P6 - P7))/(U7 - U9)))/(U7 - U9) + (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9)))/(U8 - U9) == 0;
eqn7 = (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9) == 0;
eqn8 = (5*(P7 - P8))/(U8 - U9) == 0;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8], [P1, P2, P3, P4, P5, P6, P7, P8])

X5 = linsolve(A,B)

% i = subs(X,[U7 U8 U9 U10 U11],[0.5 1.0 1.5 2.0 2.5])
%% Joint 6
eqn1 = -(5*(P1 - P2))/U7 == 0;
eqn2 = (4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 == 0;
eqn3 = -(3*((4*((5*(P1 - P2))/U7 - (5*(P2 - P3))/U8))/U7 - (4*((5*(P2 - P3))/U8 - (5*(P3 - P4))/U9))/U8))/U7 == 0;
eqn4 = P1 == 120;
eqn5 = P8 == 25;
eqn6 = -(3*((4*((5*(P5 - P6))/U9 + (5*(P6 - P7))/(U7 - U9)))/(U7 - U9) + (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9)))/(U8 - U9) == 0;
eqn7 = (4*((5*(P6 - P7))/(U7 - U9) - (5*(P7 - P8))/(U8 - U9)))/(U8 - U9) == 0;
eqn8 = (5*(P7 - P8))/(U8 - U9) == 0;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8], [P1, P2, P3, P4, P5, P6, P7, P8])

X6 = linsolve(A,B)
%% Curves 1 when k = 6 
syms u
syms U [1 14]
syms P [1 8]
syms t1 t2 t3 t4 t5
m = 15;
p = 5;
n = m-p-1;

N(1:n+1) = sym(zeros(1,n+1));

k = 6; % Vary values between 6 to 8
N(k) = 1;

% Basis function calculations using recursive method

for d = 1:p
    N(k-d) = ((U(k+1)-u)/(U(k+1)-U(k-d+1)))*N(k-d+1);         % Right term only
    for i = k-d+1:k-1                                           % Internal terms
        N(i) = ((u-U(i))/(U(i+d)-U(i)))*N(i)+((U(i+d+1)-u)/(U(i+d+1)-U(i+1)))*N(i+1);
    end
    N(k) = ((u-U(k))/(U(k+d)-U(k)))*N(k);                       % left term only
end
N = subs(N,{U1,U2,U3,U4,U5,U6,U9,U10,U11,U12,U13,U14},{0, 0, 0, 0, 0, 0, U9, U9, U9, U9, U9, U9})
y1 = N(1)*P(1)+N(2)*P(2)+N(3)*P(3)+N(4)*P(4)+N(5)*P(5)+N(6)*P(6)
y11 = subs(y1, {P(1), P(2), P(3), P(4), P(5), P(6)}, {X1(1), X1(2), X1(3), X1(4), X1(5), X1(6)})
y12 = subs(y1, {P(1), P(2), P(3), P(4), P(5), P(6)}, {X2(1), X2(2), X2(3), X2(4), X2(5), X2(6)})
y13 = subs(y1, {P(1), P(2), P(3), P(4), P(5), P(6)}, {X3(1), X3(2), X3(3), X3(4), X3(5), X3(6)})
y14 = subs(y1, {P(1), P(2), P(3), P(4), P(5), P(6)}, {X4(1), X4(2), X4(3), X4(4), X4(5), X4(6)})
y15 = subs(y1, {P(1), P(2), P(3), P(4), P(5), P(6)}, {X5(1), X5(2), X5(3), X5(4), X5(5), X5(6)})
y16 = subs(y1, {P(1), P(2), P(3), P(4), P(5), P(6)}, {X6(1), X6(2), X6(3), X6(4), X6(5), X6(6)})
%% Curve 2 when k = 7
syms u
syms U [1 16]
syms P [1 10]
syms t1 t2 t3 t4 t5
m = 15;
p = 5;
n = m-p-1;

N(1:n+1) = sym(zeros(1,n+1));

k = 7; % Vary values between 6 to 8
N(k) = 1;

% Basis function calculations using recursive method

for d = 1:p
    N(k-d) = ((U(k+1)-u)/(U(k+1)-U(k-d+1)))*N(k-d+1);         % Right term only
    for i = k-d+1:k-1                                           % Internal terms
        N(i) = ((u-U(i))/(U(i+d)-U(i)))*N(i)+((U(i+d+1)-u)/(U(i+d+1)-U(i+1)))*N(i+1);
    end
    N(k) = ((u-U(k))/(U(k+d)-U(k)))*N(k);                       % left term only
end
N = subs(N,{U1,U2,U3,U4,U5,U6,U9,U10,U11,U12,U13,U14},{0, 0, 0, 0, 0, 0, U9, U9, U9, U9, U9, U9})
y2 = N(2)*P(2)+N(3)*P(3)+N(4)*P(4)+N(5)*P(5)+N(6)*P(6)+N(7)*P(7)
% subs(y2, u, U7}
y21 = subs(y2, {P(2), P(3), P(4), P(5), P(6), P(7)}, {X1(2), X1(3), X1(4), X1(5), X1(6), X1(7)})
y22 = subs(y2, {P(2), P(3), P(4), P(5), P(6), P(7)}, {X2(2), X2(3), X2(4), X2(5), X2(6), X2(7)})
y23 = subs(y2, {P(2), P(3), P(4), P(5), P(6), P(7)}, {X3(2), X3(3), X3(4), X3(5), X3(6), X3(7)})
y24 = subs(y2, {P(2), P(3), P(4), P(5), P(6), P(7)}, {X4(2), X4(3), X4(4), X4(5), X4(6), X4(7)})
y25 = subs(y2, {P(2), P(3), P(4), P(5), P(6), P(7)}, {X5(2), X5(3), X5(4), X5(5), X5(6), X5(7)})
y26 = subs(y2, {P(2), P(3), P(4), P(5), P(6), P(7)}, {X6(2), X6(3), X6(4), X6(5), X6(6), X6(7)})
%% Curve 3 when k = 8
syms u
syms P [1 10]
syms U [1 16]
syms t1 t2 t3 t4 t5
m = 15;
p = 5;
n = m-p-1;

N(1:n+1) = sym(zeros(1,n+1));

k = 8; % Vary values between 6 to 8
N(k) = 1;

% Basis function calculations using recursive method

for d = 1:p
    N(k-d) = ((U(k+1)-u)/(U(k+1)-U(k-d+1)))*N(k-d+1);         % Right term only
    for i = k-d+1:k-1                                           % Internal terms
        N(i) = ((u-U(i))/(U(i+d)-U(i)))*N(i)+((U(i+d+1)-u)/(U(i+d+1)-U(i+1)))*N(i+1);
    end
    N(k) = ((u-U(k))/(U(k+d)-U(k)))*N(k);                       % left term only
end
N = subs(N,{U1,U2,U3,U4,U5,U6,U9,U10,U11,U12,U13,U14},{0, 0, 0, 0, 0, 0, U9, U9, U9, U9, U9, U9})
y3 = N(3)*P(3)+N(4)*P(4)+N(5)*P(5)+N(6)*P(6)+N(7)*P(7)+N(8)*P(8)
% subs(y3, u, U8)
y31 = subs(y3, {P(3), P(4), P(5), P(6), P(7), P(8)}, {X1(3), X1(4), X1(5), X1(6), X1(7), X1(8)})
y32 = subs(y3, {P(3), P(4), P(5), P(6), P(7), P(8)}, {X2(3), X2(4), X2(5), X2(6), X2(7), X2(8)})
y33 = subs(y3, {P(3), P(4), P(5), P(6), P(7), P(8)}, {X3(3), X3(4), X3(5), X3(6), X3(7), X3(8)})
y34 = subs(y3, {P(3), P(4), P(5), P(6), P(7), P(8)}, {X4(3), X4(4), X4(5), X4(6), X4(7), X4(8)})
y35 = subs(y3, {P(3), P(4), P(5), P(6), P(7), P(8)}, {X5(3), X5(4), X5(5), X5(6), X5(7), X5(8)})
y36 = subs(y3, {P(3), P(4), P(5), P(6), P(7), P(8)}, {X6(3), X6(4), X6(5), X6(6), X6(7), X6(8)})
%% Complete curve Asynchronous

diary jerk1
y1_traj = piecewise(0<u<=t1, y11, t1<u<=(t1+t2), y21, (t1+t2)<u<=(t1+t2+t3), y31);
y1_traj = subs(y1_traj,{U7, U8, U9}, {t1, (t1 + t2), (t1+t2+t3)});
pc1 = subs(y1_traj, {t1, t2, t3}, {1.7105 2.9035 1.7105})
diary off

diary jerk2
y2_traj = piecewise(0<u<=t1, y12, t1<u<=(t1+t2), y22, (t1+t2)<u<=(t1+t2+t3), y32);
y2_traj = subs(y2_traj,{U7, U8, U9}, {t1, (t1 + t2), (t1+t2+t3)});
pc2 = subs(y2_traj, {t1, t2, t3}, {1.3077 3.7092 1.3077})
diary off

diary jerk3
y3_traj = piecewise(0<u<=t1, y13, t1<u<=(t1+t2), y23, (t1+t2)<u<=(t1+t2+t3), y33);
y3_traj = subs(y3_traj,{U7, U8, U9}, {t1, (t1 + t2), (t1+t2+t3)});
pc3 = subs(y3_traj, {t1, t2, t3}, {1.6358 3.0529 1.6358})
diary off

diary jerk4
y4_traj = piecewise(0<u<=t1, y14, t1<u<=(t1+t2), y24, (t1+t2)<u<=(t1+t2+t3), y34);
y4_traj = subs(y4_traj,{U7, U8, U9}, {t1, (t1 + t2), (t1+t2+t3)});
pc4 = subs(y4_traj, {t1, t2, t3}, {0.9048 4.515 0.9048})
diary off

diary jerk5
y5_traj = piecewise(0<u<=t1, y15, t1<u<=(t1+t2), y25, (t1+t2)<u<=(t1+t2+t3), y35);
y5_traj = subs(y5_traj,{U7, U8, U9}, {t1, (t1 + t2), (t1+t2+t3)});
pc5 = subs(y5_traj, {t1, t2, t3}, {1.3657 3.5932 1.3657})
diary off

diary jerk6
y6_traj = piecewise(0<u<=t1, y16, t1<u<=(t1+t2), y26, (t1+t2)<u<=(t1+t2+t3), y36);
y6_traj = subs(y6_traj,{U7, U8, U9}, {t1, (t1 + t2), (t1+t2+t3)});
pc6 = subs(y6_traj, {t1, t2, t3}, {1.7114 2.9017 1.7114})
diary off
%% Recent Plots
t = tiledlayout(6,4,"TileSpacing","compact");

% Tile 1
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(pc1,[0 6.3245])
ylabel('deg')
title("Angular Displacement")


% Tile 2
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc1,u),[0 6.3245])
ylabel('deg/sec.')
title("Angular Velocity")

% Tile 3
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc1,u,2),[0 6.3245])
ylabel('deg/sec^2')
title("Angular Acceleration")

% Tile 4
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc1,u,3),[0 6.3245])
ylabel('deg/sec^3')
title("Jerk")

% Tile 5
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(pc2,[0 6.3245])
ylabel('deg')


% Tile 6
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc2,u),[0 6.3245])
ylabel('deg/sec.')

% Tile 7
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc2,u,2),[0 6.3245])
ylabel('deg/sec^2')

% Tile 8
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc2,u,3),[0 6.3245])
ylabel('deg/sec^3')

% Tile 9
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(pc3,[0 6.3245])
ylabel('deg')


% Tile 10
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc3,u),[0 6.3245])
ylabel('deg/sec.')

% Tile 11
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc3,u,2),[0 6.3245])
ylabel('deg/sec^2')

% Tile 12
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc3,u,3),[0 6.3245])
ylabel('deg/sec^3')

% Tile 13
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(pc4,[0 6.3245])
ylabel('deg')


% Tile 14
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc4,u),[0 6.3245])
ylabel('deg/sec.')

% Tile 15
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc4,u,2),[0 6.3245])
ylabel('deg/sec^2')

% Tile 16
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc4,u,3),[0 6.3245])
ylabel('deg/sec^3')

% Tile 17
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(pc5,[0 6.3245])
ylabel('deg')


% Tile 18
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc5,u),[0 6.3245])
ylabel('deg/sec.')

% Tile 19
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc5,u,2),[0 6.3245])
ylabel('deg/sec^2')

% Tile 20
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc5,u,3),[0 6.3245])
ylabel('deg/sec^3')

% Tile 21
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(pc6,[0 6.3245])
ylabel('deg')
xlabel('time (sec)')


% Tile 22
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc6,u),[0 6.3245])
ylabel('deg/sec.')
xlabel('time (sec)')

% Tile 23
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc6,u,2),[0 6.3245])
ylabel('deg/sec^2')
xlabel('time (sec)')

% Tile 24
nexttile
ax = gca; % current axes
ax.FontSize = 9;
ax.TickDir = 'out';
fplot(diff(pc6,u,3),[0 6.3245])
ylabel('deg/sec^3')
xlabel('time (sec)')