%Octave Script
%Title       : Definición y Resolución de Variable, Función, Dominio y Rango
%Description : Script para daR solución a el problema de "La lata para envasar chocolate" y definir los conseptos de Variable, Función, Dominio y Rango
%Authors     : Ernesto Archundia Montiel, 
%Date        : 20211013
%Version     : 4
%Usage       : octave/path/DefinicionyResolucion
%Notes       : Requiere la aplicación de octave, usar su línea de comandos  

clear
r=0:1:10;
ar=@(r) (1818.4./(r))+ ((2 * pi())*((r.^2)));
y = (1818.4./(r)) + ((2 * pi())*(r.^2));
resr = fminbnd( ar,0,10);
plot(r, y);
xlabel(['Min r = ' num2str(resr)] );
ylabel(['Min y = ' num2str( ar(resr))] );