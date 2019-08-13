function [ sig_med ] = baseline_med( sig, med_len )
%BASELINE_MED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
sig_med = zeros(size(sig));
for m = 1:length(sig)
    if m <= med_len
        sig_med(m) = sig(m)-median(sig(1:m+med_len));
    elseif m > length(sig)-med_len
        sig_med(m) =  sig(m)-median(sig(m-med_len:end));
    else
        sig_med(m) =  sig(m)-median(sig(m-med_len:m+med_len));
    end
end

end

