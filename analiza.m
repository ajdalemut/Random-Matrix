
n = 5;
st_ponovitev = 100;

[stevilo_realnih_lastnih, vse_lastne, vse_sledi, vse_det] = fanaliza(n, st_ponovitev);

povprecje_st_realnih = mean(stevilo_realnih_lastnih);
       

% Graf lastnih vrednosti
figure
plot(real(vse_lastne), imag(vse_lastne),'.')

%graf sledi 
figure
histogram(vse_sledi)

%graf determinant
figure
histogram(vse_det)

%graf dele�a realnih lastnih vrednosti
maxdim=1000;
x = 1:1:maxdim;
y = zeros(1,maxdim);
for i = x
    [stevilo_realnih_lastnih, vse_lastne, vse_sledi, vse_det] = fanaliza(i, st_ponovitev);
    povprecje_st_realnih = mean(stevilo_realnih_lastnih);
    y(i) =  povprecje_st_realnih/i; %dele� realnih
end
plot(x,y,'.')



