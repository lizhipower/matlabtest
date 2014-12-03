%% ������·�ͷ�����Ŀɿ�������RTS79

function [dur,lamline,genmttr,genmttf,weeks]=failrate
%% Table 11����·ͣ������
dur=[16	10	10	10	10	10	768	10	10	35	10	10	10	768	768	768	768	11 ...
    11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11	11];%�޸�ʱ�䵥λ�� Сʱ
lamline=[0.24	0.51	0.33	0.39	0.48	0.38	0.02	0.36	0.34	0.33	...
                0.3	0.44	0.44	0.02	0.02	0.02	0.02	0.4	0.39	0.4	0.52	0.49	...
                0.38	0.33	0.41	0.41	0.41	0.35	0.34	0.32	0.54	0.35	0.35	0.38	0.38	0.34	0.34	0.45];%������1/yr
% lamline=5.*[0.24	0.51	0.33	0.39	0.48	0.38	0.02	0.36	0.34	0.33	0.3	0.44	0.44	0.02	0.02	0.02	0.02	0.4	0.39	0.4	0.52	0.49	0.38	0.33	0.41	0.41	0.41	0.35	0.34	0.32	0.54	0.35	0.35	0.38	0.38	0.34	0.34	0.45];
%% Table 7 �ķ����ͣ������
genmttr=[50 50 40 40 ...%bus 1
                 50 50 40 40 ...%bus 2
                 50 50 50 ...%bus 7
                 50 50 50 ...%bus 13
                 0 ...% condensor
                 60 60 60 60 60 40 ...%bus 15
                 40 ...%bus 16
                 150 ...%bus 18
                 150 ...%bus 21
                 20 20 20 20 20 20 ...%bus 22
                 40 40 100 ...%bus 23
                 ];%��32������
genmttf=[450 450 1960 1960 ...%bus 1
                450 450 1960 1960 ...%bus 2
                1200 1200 1200 ...%bus 7
                950 950 950 ...%bus 13     
                450 ...% condensor
                2940 2940 2940 2940 2940 960 ...%bus15
                960 ...%bus 16
                1100 ...%bus 18
                1100 ...%bus 21
                1980 1980 1980 1980 1980 1980 ...%bus 22
                960 960 1150 ...%bus 23
                ];
 
weeks=[2 2 3 3 2 2 3 3 3 3 3 4 4 4 0.1 2 2 2 2 2 4 4 6 6 2 2 2 2 2 2 4 4 5];
return