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
scale = 4;

% work on illuminance
image = imread('lena.bmp');
if size(image,3) > 1
    image = rgb2ycbcr(image);
    image = image(:,:,1);
end

% generate low-resolution image and run super-resolution
image = modcrop(image, scale);
im_lre = imresize(imresize(single(image)/255,1/scale,'bicubic'),scale,'bicubic');
im_rec = netforward(im_lre,scale,'super-resolution');

% compute psnr and ssim
PSNR_lre = csnr(im_lre*255,image,0,0)
SSIM_lre = cal_ssim(im_lre*255,image,0,0)

PSNR_rec = csnr(im_rec*255,image,0,0)
SSIM_rec = cal_ssim(im_rec*255,image,0,0)

% show results
figure
hold on
subplot(1,3,1); imshow(image);
subplot(1,3,2); imshow(uint8(im_lre*255));
subplot(1,3,3); imshow(uint8(im_rec*255));
hold off