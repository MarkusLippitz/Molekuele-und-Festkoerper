%Phonon dispersion in GaAs
%To cite this article: D Strauch and B Dorner 1990 J. Phys.: Condens. Matter 2 1457

close all
clear all

NA = NaN;


% Table 1, along [00x]
%eta	TA      LA      TO      LO
table1 = [...
0.0  	NA      NA      8.13	8.79 ; ...
0.1 	0.64	0.91	8.11	8.78 ; ...
0.15	NA      1.38	NA      NA  ; ...
0.2 	1.17	1.79	8.04	8.80; ...
0.3 	1.60	2.55	7.94	8.68; ...
0.4 	1.93	3.32	7.85	8.59; ...
0.5 	2.17	4.04	7.77	8.46; ...
0.6 	2.32	4.72	7.71	8.28; ...
0.7 	2.40	5.35	7.64	8.05; ...
0.75	2.42	5.65	NA      NA ;...
0.8 	2.43	5.93	7.73	7.75; ...
0.85	2.44	6.18	NA      7.59; ...
0.9 	2.44	6.43	7.73	7.38; ...
0.925	NA      6.53	NA      NA; ...
0.95	2.45	6.62	NA      7.25; ...
0.975	NA      6.70	NA      NA; ...
1.0 	2.45	6.75	7.69	7.20];


% table 2, along [xx0]
% eta   TA      I       II      TO      III     IV
table2 = [...
0.0		NA      NA      NA      8.13	8.13	8.79 ; ...
0.025	NA      NA      NA      NA       NA     8.81 ; ...
0.05	NA      NA      NA      NA      8.14	8.75 ; ...
0.1 	0.66	NA      1.40	8.05	8.13	8.73 ; ...
0.15	NA      1.16	1.97	NA      8.09	8.68 ; ...
0.2 	1.20	1.54	2.56	8.00	8.03	8.58 ; ...
0.25	NA      1.88	3.04	NA      7.95	8.48 ; ...
0.3 	1.65	2.22	3.49	7.93	7.88	8.37 ; ...
0.35	NA      2.45	NA      NA      7.72	8.27 ; ...
0.4 	2.01	2.71	4.27	7.84	7.58	8.22 ; ...
0.45	NA      2.92	NA      NA      7.41	8.21 ; ...
0.5 	2.25	3.11	4.92	7.77	7.25	8.24 ; ...
0.55	NA      3.27	5.19	NA      NA      8.21 ; ...
0.6 	2.40	3.39	5.46	7.71	6.91	8.19 ; ...
0.65	NA      3.45	5.71	NA      NA      8.17 ; ...
0.7 	2.46	3.44	5.92	7.70	6.64	8.15 ; ...
0.75	2.43	3.35	6.11	NA      6.63	8.08 ; ...
0.8 	2.44	3.17	6.25	7.69	6.77	8.01 ; ...
0.85	NA      2.92	6.37	NA      6.93	7.92 ; ...
0.9 	2.43	2.68	6.54	7.69	7.16	7.82 ; ...
0.95	NA      NA      NA      NA      7.24	7.72 ; ...
1.0     2.45	2.45	6.75	7.69	7.20	7.69];

% ztable 3, along [xxx]
% eta5	TA	LA	TO      LO
table3 = [...
0.0		NA      NA      8.13	8.79 ; ...
0.025	NA      NA      NA      8.79 ; ...
0.05	0.44	0.87	NA      8.78 ; ...
0.075	NA      NA      NA      8.76 ; ...
0.1 	0.83	1.72	8.10	8.73 ; ...
0.15	1.15	2.48	NA      8.64 ; ...
0.2     1.40	3.23	7.92	8.51 ; ...
0.25	1.60	3.93	NA      8.32 ; ...
0.3     1.73	4.56	7.93	8.16 ; ...
0.35	1.82	5.14	NA      7.82 ; ...
0.4     1.87	5.64	7.89	7.57 ; ...
0.45	1.90	6.04	NA      7.34 ; ...
0.475	NA      6.17	NA      7.28 ; ...
0.5     1.90	6.20	7.90	7.25];


da = 3;
figure
subplot(1,3,1)
hold on
plot(table1(:,1), table1(:,2),'o')
plot(table1(:,1), table1(:,3),'o')
plot(table1(:,1), table1(:,4),'o')
plot(table1(:,1), table1(:,5),'o')
hold off

subplot(1,3,2)

hold on
s = sqrt(2);
plot(table2(:,1) * s , table2(:,2),'o')
plot(table2(:,1) * s, table2(:,3),'o')
plot(table2(:,1)* s, table2(:,4),'o')
plot(table2(:,1)* s, table2(:,5),'o')
plot(table2(:,1)* s, table2(:,6),'o')
plot(table2(:,1)* s, table2(:,7),'o')
hold off
xlim( [0, s]);



subplot(1,3,3)

s = sqrt(3);
hold on
plot(table3(:,1)* s, table3(:,2),'o')
plot(table3(:,1)* s, table3(:,3),'o')
plot(table3(:,1)* s, table3(:,4),'o')
plot(table3(:,1)* s, table3(:,5),'o')
hold off

xlim( [0, s/2]);






% %--------
% x1 = table1(:,1);
% d1 = table1(:,2:end);
% 
% x1i = (0:0.01:1)';
% y1i = interp1(x1,d1,x1i);
% 
% figure
% plot(x1,d1,'o')
% hold on
% plot(x1i,y1i)

% hold off



