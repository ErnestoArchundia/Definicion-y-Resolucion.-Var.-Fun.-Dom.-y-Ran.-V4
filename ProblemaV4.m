%Octave Script
%Title       : Definici�n y Resoluci�n de Variable, Funci�n, Dominio y Rango
%Description : Script para daR soluci�n a el problema de "La lata para envasar chocolate" y definir los conseptos de Variable, Funci�n, Dominio y Rango
%Authors     : Ernesto Archundia Montiel, 
%Date        : 20211013
%Version     : 4
%Usage       : octave/path/DefinicionyResolucion
%Notes       : Requiere la aplicaci�n de octave, usar su l�nea de comandos  

clear
r=0:1:10;
ar=@(r) (1818.4./(r))+ ((2 * pi())*((r.^2)));
y = (1818.4./(r)) + ((2 * pi())*(r.^2));
resr = fminbnd( ar,0,10);
plot(r, y);
xlabel(['Min r = ' num2str(resr)] );
ylabel(['Min y = ' num2str( ar(resr))] );