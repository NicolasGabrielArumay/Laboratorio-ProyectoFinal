SubProceso sprites(r)//aca solo van los sprites y los espacios es mas para centrarlo
	definir ahorcado Como Caracter
	dimension ahorcado[8]
	ahorcado[1]="                                                           _______           _______  _______  _______  _______  ______   _______ "
	ahorcado[2]="                                                          (  ___  )|\     /|(  ___  )(  ____ )(  ____ \(  ___  )(  __  \ (  ___  )"
	ahorcado[3]="                                                          | (   ) || )   ( || (   ) || (    )|| (    \/| (   ) || (  \  )| (   ) |"
	ahorcado[4]="                                                          | (___) || (___) || |   | || (____)|| |      | (___) || |   ) || |   | |"
	ahorcado[5]="                                                          |  ___  ||  ___  || |   | ||     __)| |      |  ___  || |   | || |   | |"
	ahorcado[6]="                                                          | (   ) || (   ) || |   | || (\ (   | |      | (   ) || |   ) || |   | |"
	ahorcado[7]="                                                          | )   ( || )   ( || (___) || ) \ \__| (____/\| )   ( || (__/  )| (___) |"
	ahorcado[8]="                                                          |/     \||/     \|(_______)|/   \__/(_______/|/     \|(______/ (_______)"
	Escribir ahorcado[r]//esto lo escribe

FinSubProceso
Algoritmo Menudelahorcameesta
	definir a,e,r Como Entero
	Para r=1 Hasta 8 Con Paso 1 Hacer
		sprites(r)
	Fin Para
	e=0
	Repetir
		si e=0
			Escribir "Eliga su opcion (del 1 al 3 pibe)"
		SiNo
			Escribir "Eliga bien (del 1 al 3 pibe)"
		FinSi
		leer a
		Segun a Hacer
			1:
				Adivinar(a)
			2:
				Escribir "pepe"
			3:
				Escribir "ete sech"
			De Otro Modo:
				e=e+1
		Fin Segun
	Hasta Que a<=3 y a>=1//repite hasta que una de las opciones sea correcta
FinAlgoritmo
SubProceso Adivinar(a)
	
	Definir palabra Como Cadena
    Definir guess Como Cadena
    Definir h,i Como Entero
    Definir ganado,Nogano Como Logico
    Dimension palabra[6]
	//estas son las palabras que son correctas
	palabra[1] = "ola"
    palabra[2] = "si"
    palabra[3] = "salame"
    palabra[4] = "rojo"
    palabra[5] = "naranja"
    palabra[6] = "pepino"
    h = Aleatorio(1,6)//esta linea hace un Aleatorio del 1 al 6 para elegir la palabra correcta
	Escribir palabra[h]
    ganado = Nogano
	i=0
    Escribir "Adivina la palabra:"
    Mientras ganado = Nogano y i<6 Hacer//esto hace un contador de hasta 6 intentos (por lo de i) y compara el ganado 
        Leer guess
        i=i+1
		Si palabra[h] = guess Entonces//aca compara una palabra aleatoria de las correcta y las compara con la respuesta
            Escribir "Le atinaste"
            ganado = Verdadero
        SiNo
            Escribir "No le atinaste"
        FinSi
    FinMientras	
FinSubProceso