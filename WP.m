function [hasil] = WP(data)

global w;
%mencari ukuran dari data
[m n]=size (data);

S = zeros(1,m);

%Melakukan perhitungan perbaris(nilali per kolom dipangkatkan dengan bobot lalu hasil kolom per baris dijumlahkan)
for i=1:m
    S(i)=prod(data(i,:).^w);
end
%melakukan perangkingan
hasil = S/sum(S);
    
end

