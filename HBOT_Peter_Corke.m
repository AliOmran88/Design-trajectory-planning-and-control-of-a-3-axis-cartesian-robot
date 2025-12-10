clear;
clc;
close all

L(1) = Link('prismatic', 'theta', 0, 'a', 0, 'alpha', -pi/2, 'qlim', [0 7500])
L(2) = Link('prismatic', 'theta', pi/2, 'a', 0, 'alpha', -pi/2, 'qlim', [0 5000])
L(3) = Link('prismatic', 'theta', 0, 'a', 0, 'alpha', 0, 'qlim', [0 2000])
HBOT = SerialLink(L, 'name', 'HBOT')
%%
coordinates = [5000, 2500, 1000];

Forward_Model = HBOT.fkine(coordinates)
Inverse_Model = HBOT.ikine(Forward_Model, 'mask', [1 1 1 0 0 0])

HBOT.plot(coordinates)
HBOT.teach(coordinates)
%%
J = HBOT.jacob0(coordinates)
%%

%%
hold on
samples = 1000;

for abc = 0:samples
    %Generate random joint variables
    a1 = 7500*rand();
    a2 = 5000*rand();
    a3 = 2000*rand();

    pos = [a1 a2 a3];

    HBOT.plot(pos)
    T0 = HBOT.fkine(pos);
    plot3(T0.t(1), T0.t(2), T0.t(3), '.', 'MarkerSize', 5)

end 