function [ img_out ] = netforward(img,param,task)

[wid,hei,chn] = size(img);
caffe.reset_all();
caffe.set_mode_cpu();

model = ['model/' task '/' num2str(param) '.caffemodel']; 

if strcmp(task,'debluring') || strcmp(task,'inpainting')
    net = caffe.Net('model/REDNet_ch3.prototxt',model,'test');
else
    net = caffe.Net('model/REDNet_ch1.prototxt',model,'test');
end

img_out = zeros(wid, hei, chn,8);
for i = 1 : 4
    output = net.forward({rot90(img,i-1)});
    img_out(:,:,:,i) = rot90(output{1}, 5-i) + img;
end
for i = 5 : 8
    output = net.forward({rot90(fliplr(img),i-5)});
    img_out(:,:,:,i) = fliplr(rot90(output{1}, 9-i)) + img;
end

img_out = mean(img_out,4);


end
