
% if size(spectrogram1,1)> size(template,1)
%     index=size(template,1)+1;
%     spectrogram1(index:size(template,1),:)=[];
% end
% if size(spectrogram1,2)> size(template,2)
%     index=size(template,2)+1;
%     spectrogram1(:,index:size(template,2))=[];
% end
%
% if size(spectrogram2,1)> size(template,1)
%     index=size(template,1)+1;
%     spectrogram2(index:size(template,1),:)=[];
% end
% if size(spectrogram2,2)> size(template,2)
%     index=size(template,2)+1;
%     spectrogram2(:,index:size(template,2))=[];
% end
%
% if size(spectrogram3,1)> size(template,1)
%     index=size(template,1)+1;
%     spectrogram3(index:size(template,1),:)=[];
% end
% if size(spectrogram3,2)> size(template,2)
%     index=size(template,2)+1;
%     spectrogram3(:,index:size(template,2))=[];
% end


% if size(template,1) > size(spectrogram1,1)
%     index=size(spectrogram1,1)+1;
%     template(index:size(spectrogram1,1),:)=[];
% end
% if size(template,2) > size(spectrogram1,2)
%     index=size(spectrogram1,2)+1;
%     template(:,index:size(spectrogram1,2))=[];
% end
% 
% if size(template,1) > size(spectrogram2,1)
%     index=size(spectrogram2,1)+1;
%     template(index:size(spectrogram2,1),:)=[];
% end
% if size(template,2) > size(spectrogram2,2)
%     index=size(spectrogram2,2)+1;
%     template(:,index:size(spectrogram2,2))=[];
% end
% 
% if size(template,1) > size(spectrogram3,1)
%     index=size(spectrogram3,1)+1;
%     template(index:size(spectrogram3,1),:)=[];
% end
% if size(template,2) > size(spectrogram3,2)
%     index=size(spectrogram3,2)+1;
%     template(:,index:size(spectrogram3,2))=[];
% end

template1=template;
template2=template;
template3=template;
template4=template;

if size(template1,1) > size(spectrogram1,1)
    template1(size(spectrogram1,1)+1:size(template1,1),:)=[];
end
if size(template1,2) > size(spectrogram1,2)
    template1(:,size(spectrogram1,2)+1:size(template1,2))=[];
end

if size(template2,1) > size(spectrogram2,1)
    template2(size(spectrogram2,1)+1:size(template2,1),:)=[];
end
if size(template2,2) > size(spectrogram2,2)
    template2(:,size(spectrogram2,2)+1:size(template2,2))=[];
end

if size(template3,1) > size(spectrogram3,1)
    template3(size(spectrogram3,1)+1:size(template3,1),:)=[];
end
if size(template3,2) > size(spectrogram3,2)
    template3(:,size(spectrogram3,2)+1:size(template3,2))=[];
end

if size(template4,1) > size(spectrogram4,1)
    template4(size(spectrogram4,1)+1:size(template4,1),:)=[];
end
if size(template4,2) > size(spectrogram4,2)
    template4(:,size(spectrogram4,2)+1:size(template4,2))=[];
end














