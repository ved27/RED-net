% =========================================================================
% Test code for RED-Net
%
% Reference
%   Xiao-Jiao Mao, Chunhua Shen, Yu-Bin Yang.
%   Image Restoration Using Very Deep Convolutional Encoder-Decoder Networks with Symmetric Skip Connections
%   Annual Conference on Neural Information Processing Systems (NIPS), 2016
%   https://arxiv.org/pdf/1606.08921.pdf
%
% Xiao-Jiao Mao
% Department of Computer Science and Technology, Nanjing University
% For any question, please send email to xjmgl.nju@gmail.com
% =========================================================================


clear all; clc; close all;
addpath('./caffe/matlab');
addpath('utils');

% set parameters
kernel = 'disk';
K = fspecial('disk',7);
% kernel = 'gaussian';
% K = fspecial('gaussian', 25, 1.6);

% generate blured image and run debluring
image = imread('lena.bmp');
im_blr = single(imfilter(image, K, 'conv', 'replicate')) / 255;
im_rec = netforward(im_blr,kernel,'debluring');

% compute psnr and ssim
PSNR_blr = csnr(im_blr*255,image,0,0)
SSIM_blr = cal_ssim(im_blr*255,image,0,0)

PSNR_rec = csnr(im_rec*255,image,0,0)
SSIM_rec = cal_ssim(im_rec*255,image,0,0)

% show results
figure
hold on
subplot(1,3,1); imshow(image);
subplot(1,3,2); imshow(uint8(im_blr*255));
subplot(1,3,3); imshow(uint8(im_rec*255));
hold off