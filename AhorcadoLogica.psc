SubProceso sprites(nombre,fase,letra)//aca solo van los sprites y los espacios es mas para centrarlo
	definir ahorcado, fase0,fase1,fase2,fase3,fase4,fase5,fase6 Como Caracter
	dimension ahorcado[8]
	Dimensionar fase0[7]
	Dimensionar fase1[7]
	Dimensionar fase2[7]
	Dimensionar fase3[7]
	Dimensionar fase4[7]
	Dimensionar fase5[7]
	Dimensionar fase6[7]
	ahorcado[1]="                                                           _______           _______  _______  _______  _______  ______   _______ "
	ahorcado[2]="                                                          (  ___  )|\     /|(  ___  )(  ____ )(  ____ \(  ___  )(  __  \ (  ___  )"
	ahorcado[3]="                                                          | (   ) || )   ( || (   ) || (    )|| (    \/| (   ) || (  \  )| (   ) |"
	ahorcado[4]="                                                          | (___) || (___) || |   | || (____)|| |      | (___) || |   ) || |   | |"
	ahorcado[5]="                                                          |  ___  ||  ___  || |   | ||     __)| |      |  ___  || |   | || |   | |"
	ahorcado[6]="                                                          | (   ) || (   ) || |   | || (\ (   | |      | (   ) || |   ) || |   | |"
	ahorcado[7]="                                                          | )   ( || )   ( || (___) || ) \ \__| (____/\| )   ( || (__/  )| (___) |"
	ahorcado[8]="                                                          |/     \||/     \|(_______)|/   \__/(_______/|/     \|(______/ (_______)"
	//----------------------------------------//
	fase0[1]=" +---+"
	fase0[2]=" |   |"
	fase0[3]="     |"
	fase0[4]="     |"
	fase0[5]="     |"
	fase0[6]="     |"
	fase0[7]="========"
	//---------------------------------------//
	fase1[1]=" +---+"
	fase1[2]=" |   |"
	fase1[3]=" O   |"
	fase1[4]="     |"
	fase1[5]="     |"
	fase1[6]="     |"
	fase1[7]="========"
	//---------------------------------------//
	fase2[1]=" +---+"
	fase2[2]=" |   |"
	fase2[3]=" O   |"
	fase2[4]=" |   |"
	fase2[5]="     |"
	fase2[6]="     |"
	fase2[7]="========"
	//---------------------------------------//
	fase3[1]=" +---+"
	fase3[2]=" |   |"
	fase3[3]=" O   |"
	fase3[4]="/|   |"
	fase3[5]="     |"
	fase3[6]="     |"
	fase3[7]="========"
	//---------------------------------------//
	fase4[1]=" +---+"
	fase4[2]=" |   |"
	fase4[3]=" O   |"
	fase4[4]="/|\  |"
	fase4[5]="     |"
	fase4[6]="     |"
	fase4[7]="========"
	//---------------------------------------//
	fase5[1]=" +---+"
	fase5[2]=" |   |"
	fase5[3]=" O   |"
	fase5[4]="/|\  |"
	fase5[5]="/    |"
	fase5[6]="     |"
	fase5[7]="========"
	//---------------------------------------//
	fase6[1]=" +---+"
	fase6[2]=" |   |"
	fase6[3]=" O   |"
	fase6[4]="/|\  |"
	fase6[5]="/ \  |"
	fase6[6]="     |"
	fase6[7]="========"
	Segun nombre Hacer//esto es un segun que hace que dependiendo que pongan adentro del sprite() salga un sprite o otro, para llamar al sprite que quieres usar solo hacer sprite("(nombredelsprite)")
		"ahorcado":
			Para i = 1 Hasta 8 Con Paso 1 Hacer
				Escribir ahorcado[i]
			FinPara
		"fases"://aca irian las distintas fases
			Segun fase Hacer
				0:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase0[i]
					FinPara//esto carga todas las fases y hace que solo tengas que llamarlas y no hacer un for por cada fase
				1:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase1[i]
					FinPara
				2:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase2[i]
					FinPara
				3:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase3[i]
					FinPara
				4:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase4[i]
					FinPara
				5:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase5[i]
					FinPara
				6:
					Para i = 1 Hasta 7 Con Paso 1 Hacer
						Escribir fase6[i]
					FinPara
			FinSegun
				De Otro Modo:
					Escribir "Sprite no encontrado"//mensaje de error
			FinSegun
FinSubProceso
Algoritmo Menudelahorcameesta
	definir a,e,r,f,fallas Como Entero
	definir manzana Como Caracter
	Repetir
		sprites("ahorcado",0,0)//esto solo muestra por pantalla, para llamar solo hay que poner "sprite("ahorcado" o "fases",i o 0,0)
		Escribir "Escriba su opcion: 1 Ahorcado 2: Planificacion 3: salir na mas"
		leer a
		Segun a Hacer
			1:
				Adivinar(a)
				Leer manzana
				Repetir
					si manzana="S" o manzana="s" Entonces
						Adivinar(a)
					sino 
						si manzana="N" o manzana="n" Entonces
							Escribir "Gracias por jugar"
						SiNo
							Limpiar Pantalla
							Escribir "No pusiste un caracter correcto"
							Leer manzana
						FinSi
					FinSi
				Hasta Que manzana="N" o manzana="n" o manzana="S" o manzana="s"
			2:
				Reglas(a)
			3:
				
			De Otro Modo:
				Escribir "Pusiste una opcion incorrecta"
		Fin Segun
	Hasta Que a=3 o a=1//repite hasta que una de las opciones sea correcta
FinAlgoritmo
SubProceso Adivinar(a)
	Limpiar Pantalla
	Definir guess, letrasG Como Cadena
	Definir palabra Como Cadena
	Definir mostrada Como Caracter
	Definir h,i,n,cantidadP Como Entero
	Definir ganado,NoGano,encontro Como Logico
	Dimension palabra[6]
	Dimension mostrada[40]
	palabra[1] = "ola"
	palabra[2] = "si"
	palabra[3] = "salame"
	palabra[4] = "rojo"
	palabra[5] = "verde"
	h = Azar(5) + 1
	cantidadP = Longitud(palabra[h])
	Para n <- 1 Hasta cantidadP Hacer
		mostrada[n] = "_"
	FinPara
	i = 0
	ganado = Falso
	NoGano = Falso
	letrasG = ""
	Mientras No ganado Y No NoGano Hacer
		Limpiar Pantalla
		Escribir "=== AHORCADO ==="
		sprites("fases",i,0)
		Escribir ""
		Escribir "=== Palabra ==="
		Para n <- 1 Hasta cantidadP Hacer
			Escribir Sin Saltar mostrada[n], " "
		FinPara
		Escribir ""
		Escribir ""
		Escribir "Intentos fallidos: ", i
		Escribir "Letras usadas: ", letrasG
		Escribir ""
		Escribir "La palabra es: ", palabra[h] 
		Leer guess
		guess = Minusculas(guess)
		encontro = Falso
		Para n <- 1 Hasta cantidadP Hacer
			Si Subcadena(palabra[h],n,n) = guess Entonces
				mostrada[n] = guess
				encontro = Verdadero
			FinSi
		FinPara
		Si NO encontro Entonces
			i = i + 1
			letrasG = letrasG + guess + " "
		FinSi
		ganado = Verdadero
		Para n <- 1 Hasta cantidadP Hacer
			Si mostrada[n] <> Subcadena(palabra[h],n,n) Entonces
				ganado = Falso
			FinSi
		FinPara
		Si i = 6 Entonces
			NoGano = Verdadero
		FinSi
	FinMientras
	Limpiar Pantalla
	Si ganado Entonces
		sprites("",i,"")
		Escribir "#############################"
		Escribir "#                           #"
		Escribir "#       ¡ GANASTE !         #"
		Escribir "#                           #"
		Escribir "#        Fallaste: ", i, "        #"
		Escribir "#                           #"
		Escribir "#############################"
	SiNo
		Escribir "#############################"
		Escribir "#                           #"
		Escribir "#      ¡ PERDISTE !         #"
		Escribir "#                           #"
		Escribir "#       [ que bien ]        #"
		Escribir "#                           #"
		Escribir "#############################"
	FinSi
	Escribir ""
	Escribir "Quieres continuar? S:si N:no"
FinSubProceso

SubProceso Reglas(a)
	Limpiar Pantalla
	Definir num Como Entero
	Escribir "La idea del proyecto es simplemente, un ahorcado, y ya"	
	Escribir ""
	Escribir "Hago un menu para que podamos poner que hicimos y como va el proyecto"
	Escribir "1: para ver la idea general"
	Escribir "2: para ver que tenemos"
	Escribir "3: para salir y ya"
	Leer num
	Segun num Hacer
		1:
			Escribir "Ideas generales:"
			Escribir "Tabla de puntaje(si tenemos tiempo vemos si podemos hacer que se guarden en archivos)"
			Escribir "Dificultades (como conceptos luego vemos como lo metemos, idea general: categoria y palabras mas complejas) junto a pistas con cada una"
			Escribir "Sprites y un menu por ahora"
			Escribir "Toque una tecla para continuar"
			Esperar Tecla
		2:
			Escribir "Por ahora tenemos el menu, como se vera un poco visualmente el juego lo unico que hay que hacer para las dificultades es cambiar las palabras"
			Escribir "Los sprites estan echos, maximo cambiamos los de victoria"
			Escribir "Toque una tecla para continuar"			
			Esperar Tecla
		999:
			Limpiar Pantalla
			Escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@@@@@@@@%                              %@@@@@@@@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@*++++++=                              =++++++*@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@-                                            -@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@=                                                      =@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@                                                            @@@@@@@@@@"
			Escribir "@@@@@@@=                                                                =@@@@@@@"
			Escribir "@@@@@++:                                                                :++@@@@@"
			Escribir "@@@@@                                                                      @@@@@"
			Escribir "@@@@@                                                                      @@@@@"
			Escribir "@@+                                                                          +@@"
			Escribir "@@+                                                                          +@@"
			Escribir "@@+         -==============.                      -================-         +@@"
			Escribir "@@+         *@@@@@@@@@@@@@@:                      #@@@@@@@@@@@@@@@@*         +@@"
			Escribir "@@+    *@@@@@@@@@@@@@@@@@@@@@#.                .@@@@@@@@@@@@@@@@@@@@@@@@*    +@@"
			Escribir "@@+  %%@@@@@@@@@@@@@@@@@@@@@@#.                .@@@@@@@@@@@@@@@@@@@@@@@@@%%  +@@"
			Escribir "@@+  @@@@@@@@@@@@@@+++++@@@@@#.                .@@@@@%++++#@@@@@@@@@@@@@@@@  +@@"
			Escribir "@@+  @@@@@@@@@@@@@@     @@@@@#.                .@@@@@*    =@@@@@@@@@@@@@@@@  +@@"
			Escribir "@@+  @@@@@@@@@@@@@@     @@@@@#.                .@@@@@*    =@@@@@@@@@@@@@@@@  +@@"
			Escribir "@@@@@  *@@@@@@@@@@@@@@@@@@@:      :#@@@@@@@       #@@@@@@@@@@@@@@@@@@@@@*  @@@@@"
			Escribir "@@@@@  -====%@@@@@@@@@@@@@@:      :#@@@@@@@       #@@@@@@@@@@@@@@@@%====-  @@@@@"
			Escribir "@@@@@       *@@@@@@@@@@@@@@:      :#@@@@@@@       #@@@@@@@@@@@@@@@@*       @@@@@"
			Escribir "@@@@@@@=              %@%       *@@@@@@@@@@@@-      :@@:                =@@@@@@@"
			Escribir "@@@@@@@=         #@@@@:         *@@@@@@@@@@@@-         %@@@@:           =@@@@@@@"
			Escribir "@@@@@       *@@                 *@@@@@@@@@@@@-                -@@.         @@@@@"
			Escribir "@@@@@       *@@**:              -============:                -@@**=       @@@@@"
			Escribir "@@@@@       *@@@@-                                            -@@@@*       @@@@@"
			Escribir "@@@@@  *@@@@@@@  #@@@@:                                  :@@@@@@@@@@@@.    @@@@@"
			Escribir "@@@@@       *@@    :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%  %@@@@.         @@@@@"
			Escribir "@@@@@@@=      .@@@@@@@:      -@@=     :@@:     .@@-    %@%  %@#         =@@@@@@@"
			Escribir "@@@@@@@=      .++%@@@@:      -@@=     :@@:     .@@-    %@@++++-         =@@@@@@@"
			Escribir "@@@@@@@=         #@@@@:      -@@=     :@@:     .@@-    %@@@@:           =@@@@@@@"
			Escribir "@@@@@@@@@@            %@@@@@@@@@=     :@@:     .@@- :@@@@%            @@@@@@@@@@"
			Escribir "@@@@@@@@@@@@=              %@@@@@@@@@@@@@@@@@@@@@@@@%              =@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@-                                            -@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@*++++++=                              =++++++*@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@@@@@@@@%                              %@@@@@@@@@@@@@@@@@@@@@@@@"
			Escribir "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			Escribir "Me quedo piola el sprite?"
			Esperar Tecla
			Limpiar Pantalla
	Fin Segun
	Limpiar Pantalla
FinSubProceso