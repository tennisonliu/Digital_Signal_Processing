function [y,H] = conv_tp(h,x)
% Linear Convolution using Toeplitz Matrix
% -----------------------------------------
% [y,H] = conv_tp(h,x)
% y = output sequence in column format
% H = Toeplitz convolution matrix
% h = impulse response in column format
% x = input sequence in column format
col0= [h';zeros(length(x)-1,1)];
row0 = [h(1),zeros(1,length(x)-1)];
   H = toeplitz(col0,row0)
   
   y =H*x'