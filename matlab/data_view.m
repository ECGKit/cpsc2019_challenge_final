function data_view( dat_index)
%DATA_VIEW �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
close(clf)
figure(1)
ecg = load(['dat/icbeb2019/data/data_',dat_index,'.mat'])
load(['dat/icbeb2019/ref/R_',dat_index,'.mat'])
plot(ecg.ecg)
hold on
stem(R_peak, ones(length(R_peak)))
end

