clear;
img = double(imread('15.jpg'));

para.epsilon_stop_L = 1e-3;
para.epsilon_stop_R = 1e-3;
para.epsilon = 10/255;
para.u = 1;
para.ro = 1.5;
para.lambda = 5;
para.beta = 0.01;
para.omega = 0.01;
para.delta = 10;

gamma = 2.2;

[R, L, N] = lowlight_enhancement(img, para);

res = R.*L.^(1/gamma);

figure,imshow(res)
imwrite(res, 'img_15_re.png')



















