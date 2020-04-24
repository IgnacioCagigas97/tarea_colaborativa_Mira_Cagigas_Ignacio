Algoritmo Romanos
	Escribir "Ingrese un número entre 1 y 1000"
	
	Leer Numero
	
	SePuedeConvertir<-Verdadero
	Si Numero=0 Entonces
		Escribir "No existe ningún símbolo para representar el 0"
		SePuedeConvertir<-Falso
	FinSi
	Si Numero<>trunc(numero) Entonces
		Escribir "El número debe ser entero"
		SePuedeConvertir<-Falso
	FinSi
	Si Numero>1000 Entonces
		Escribir "Muy alto"
		SePuedeConvertir<-Falso
	FinSi
	Si Numero<0 Entonces
		Escribir "Debe ser positivo"
		SePuedeConvertir<-Falso
	FinSi
	
	Si SePuedeConvertir Entonces
		Si Numero=1000 Entonces
			Escribir "M"
		SiNo
			Dimension nu[10], nd[10], nc[10]
			nu[1]<-''; nu[2]<-'I'; nu[3]<-'II'; nu[4]<-'III'; nu[5]<-'IV'; nu[6]<-'V'; nu[7]<-'VI'; nu[8]<-'VII'; nu[9]<-'VIII'; nu[10]<-'IX'
			nd[1]<-''; nd[2]<-'X'; nd[3]<-'XX'; nd[4]<-'XXX'; nd[5]<-'XL'; nd[6]<-'L'; nd[7]<-'LX'; nd[8]<-'LXX'; nd[9]<-'LXXX'; nd[10]<-'XC'
			nc[1]<-''; nc[2]<-'C'; nc[3]<-'CC'; nc[4]<-'CCC'; nc[5]<-'CD'; nc[6]<-'D'; nc[7]<-'DC'; nc[8]<-'DCC'; nc[9]<-'DCCC'; nc[10]<-'CM'
			centenas<-trunc(Numero/100) MOD 10
			decenas<-trunc(Numero/10) MOD 10
			unidades<-Numero MOD 10
			Escribir "El número decimal convertido a romanos es: " nc[centenas+1],nd[decenas+1],nu[unidades+1]
		FinSi
	FinSi	
	
	bin<-0
	i<-0
	
	SePuedeConvertir<-Verdadero
	Si Numero=0 Entonces
		Escribir "El número decimal convertido a binario es: 0"
		SePuedeConvertir<-Falso
	FinSi
	Si Numero<>trunc(Numero) Entonces
		SePuedeConvertir<-Falso
	FinSi
	Si Numero>1000 Entonces
		SePuedeConvertir<-Falso
	FinSi
	Si Numero<0 Entonces
		SePuedeConvertir<-Falso
	FinSi
	
	
	Si SePuedeConvertir Entonces
		s=Numero
		bin=0
		i=1
		Mientras s<>1 Hacer
			bin=bin+(s mod 2)*i
			s=trunc(s/2)
			i=i*10
		FinMientras
		bin=bin+(s mod 2)*i
		Escribir "El número decimal convertido a binario es: " bin
	FinSi
	
	
FinAlgoritmo
